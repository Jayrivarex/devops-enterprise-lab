resource "azurerm_static_web_app" "swa" {
  name                = "swa-enterprise-frontend-dev"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
