

check_deployment_health() {
  local namespace=$1
  local deployment=$2
  local expected_replicas

  local spinner='|/-\'
  local i=0

  expected_replicas=$(kubectl get deployment "$deployment" -n "$namespace" -o jsonpath='{.spec.replicas}')
  echo "Esperando até que o deployment $deployment tenha $expected_replicas..."

  while true; do
    local available_replicas
    available_replicas=$(kubectl get deployment "$deployment" -n "$namespace" -o jsonpath='{.status.availableReplicas}' || echo 0)
    available_replicas=${available_replicas:-0}

    local spin_char="${spinner:i++%${#spinner}:1}"

    echo -ne "\r$spin_char Réplicas disponíveis: $available_replicas / $expected_replicas"

    if [[ "$available_replicas" -eq "$expected_replicas" ]]; then
      echo -ne "\r✓ Réplicas disponíveis: $available_replicas / $expected_replicas\n"
      break
    fi

    sleep 1
  done
}
# Namespace onde o NGINX Ingress está instalado
NAMESPACE="ingress-nginx"

# Nome do deployment (ajuste se estiver diferente)
DEPLOYMENT_NAME="ingress-nginx-controller"

CLUSTER_NAME="cluster-liferay"

if kind get clusters | grep -q "^${CLUSTER_NAME}$"; then
  echo "✅ O cluster '$CLUSTER_NAME' está rodando."
else
  echo "❌ O cluster '$CLUSTER_NAME' NÃO está rodando... Criando cluster"
  kind create cluster --name $CLUSTER_NAME --config ./kind/kind-config.yaml
  kubectl  apply -f ./ingress-controller/
  check_deployment_health $NAMESPACE $DEPLOYMENT_NAME
fi

kind load docker-image -n $CLUSTER_NAME lfrgs-devops-k8s-actions/mysql:1.0 
kind load docker-image -n $CLUSTER_NAME lfrgs-devops-k8s-actions/liferay:1.0

kubectl  apply -f ./mysql/
kubectl  apply -f ./liferay/