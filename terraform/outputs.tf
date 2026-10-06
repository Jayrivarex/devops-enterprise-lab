output "acr_login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "URL del servidor de acceso al Azure Container Registry."
}

output "aks_cluster_name" {
  value       = azurerm_kubernetes_cluster.aks.name
  description = "Nombre del clúster AKS desplegado."
}

output "apim_gateway_url" {
  value       = azurerm_api_management.apim.gateway_url
  description = "URL Gateway del API Management."
}

output "swa_default_hostname" {
  value       = azurerm_static_web_app.swa.default_host_name
  description = "URL pública por defecto del Frontend Static Web App."
}
