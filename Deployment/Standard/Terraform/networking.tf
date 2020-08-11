resource "azurerm_virtual_network" "pe_vnet" {
  name                = var.vnet_name
  location            = var.location
  address_space       = [var.address_space]
  resource_group_name = azurerm_resource_group.pe_infrastructure.name
  dns_servers         = var.dns_servers
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_names[count.index]
  virtual_network_name = azurerm_virtual_network.pe_vnet.name
  resource_group_name  = azurerm_resource_group.pe_infrastructure.name
  address_prefixes     = [var.subnet_prefixes[count.index]]
  count                = length(var.subnet_names)
}