resource "azurerm_container_registry" "acr" {
  name                = "acrenterpriselabjay2026"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
