resource "azurerm_api_management" "apim" {
  name                = "apim-enterprise-lab-jay2026-v2"
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = "Jayrivarex Enterprise"
  publisher_email     = "admin@enterprise-lab.local"
  sku_name            = "Consumption_0"

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
