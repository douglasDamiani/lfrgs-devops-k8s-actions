#!/bin/bash

DEPLOYMENT="liferay-deployment"
NAMESPACE="default"
VALOR="portal-live-"

LABEL_SELECTOR=$(kubectl get deployment "$DEPLOYMENT" -n "$NAMESPACE" -o jsonpath="{.spec.selector.matchLabels}" | jq -r 'to_entries | map("\(.key)=\(.value)") | join(",")')

PODS=$(kubectl get pods -n "$NAMESPACE" -l "$LABEL_SELECTOR" -o jsonpath="{.items[*].metadata.name}")

for POD in $PODS; do
  echo "🔍 Executando no pod $POD..."

  kubectl exec -n "$NAMESPACE" "$POD" -- bash -c "
    if curl -s http://localhost:8080 | grep -q \"$VALOR\"; then
      echo \"✅ Valor '$VALOR' encontrado na página do pod $POD\"
    else
      echo \"❌ Valor '$VALOR' NÃO encontrado na página do pod $POD\"
    fi
  "
done