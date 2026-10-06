resource "azurerm_kubernetes_cluster" "aks" {
  count = var.enable_aks ? 1 : 0

  name                = "aks-enterprise-lab-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aksenterprise-lab"

  default_node_pool {
    name       = "defaultpool"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
