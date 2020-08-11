resource "azurerm_network_security_group" "pe_master_nsg" {
  depends_on          = ["azurerm_virtual_network.pe_vnet"]
  name                = "ssh"
  location            = var.location
  resource_group_name = azurerm_resource_group.pe_infrastructure.name
}

resource "azurerm_network_security_rule" "pe_master_ssh" {
  name                        = "SSH_Access"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.pe_infrastructure.name
  network_security_group_name = azurerm_network_security_group.pe_master_nsg.name
}

resource "azurerm_network_security_rule" "pe_master_console" {
  name                        = "PE_Console_Access"
  priority                    = 105
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.pe_infrastructure.name
  network_security_group_name = azurerm_network_security_group.pe_master_nsg.name
}