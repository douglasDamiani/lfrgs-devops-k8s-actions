<#assign isAdmin = permissionChecker.isOmniadmin()>

<#assign cdnHost = themeDisplay.getCDNDynamicResourcesHost()>

<#assign friendlyURL = themeDisplay.getLayout().getFriendlyURL() />

<#assign currentURL = themeDisplay.getURLCurrent() />

<#assign isAutenticacao = friendlyURL == '/autenticacao'>

<#assign isEditMode = false>
<#if currentURL?index_of("p_l_mode=edit") != -1>
    <#assign isEditMode = true>
</#if>

<#assign isControlPanel = false>
<#if currentURL?index_of("control_panel") != -1>
    <#assign isControlPanel = true>
</#if>

<#assign isDomainNull = false>
<#if friendlyURL == "/" || friendlyURL == "">
    <#assign isDomainNull = true>
</#if>

<#assign themaGolLog = '/o/gollog-theme/'>

<#assign css_body = "layout-no-sidebars path-node node--type-page" />
<#if isAdmin>
    <#assign css_body = "chrome has-control-menu has-edit-mode-menu controls-visible yui3-skin-sam guest-site signed-in private-page site closed" />
</#if>