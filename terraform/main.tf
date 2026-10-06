terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Referencia al Resource Group asignado en el Azure Sandbox
data "azurerm_resource_group" "sandbox" {
  name = "1-a89e58ac-playground-sandbox"
}

# Azure Container Registry (Basic SKU)
resource "azurerm_container_registry" "acr" {
  name                = "acrenterpriselabjay2026"
  resource_group_name = data.azurerm_resource_group.sandbox.name
  location            = data.azurerm_resource_group.sandbox.location
  sku                 = "Basic"
  admin_enabled       = true
}

# Azure Static Web App (Free Tier)
resource "azurerm_static_web_app" "swa" {
  name                = "swa-enterprise-frontend-dev"
  resource_group_name = data.azurerm_resource_group.sandbox.name
  location            = "eastus2"
  sku_tier            = "Free"
  sku_size            = "Free"
}

output "acr_login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "Servidor de Login de ACR"
}
