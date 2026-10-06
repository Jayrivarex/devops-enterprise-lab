output "acr_login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "URL del servidor de acceso al Azure Container Registry."
}

output "aks_cluster_name" {
  value       = var.enable_aks ? azurerm_kubernetes_cluster.aks[0].name : "AKS is disabled in this sandbox environment"
  description = "Nombre del clúster AKS desplegado (si está habilitado)."
}

output "apim_gateway_url" {
  value       = azurerm_api_management.apim.gateway_url
  description = "URL Gateway del API Management."
}

output "swa_default_hostname" {
  value       = azurerm_static_web_app.swa.default_host_name
  description = "URL pública por defecto del Frontend Static Web App."
}
