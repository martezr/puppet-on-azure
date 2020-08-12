provider "azurerm" {
  features {}
  version = "=2.20.0"
}

resource "azurerm_resource_group" "pe_infrastructure" {
  name     = "puppet_enterprise_resources"
  location = var.location
}