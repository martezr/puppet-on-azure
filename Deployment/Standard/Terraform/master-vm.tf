resource "azurerm_network_interface" "pe_master_nic" {
  name                = "master_nic"
  location            = azurerm_resource_group.pe_infrastructure.location
  resource_group_name = azurerm_resource_group.pe_infrastructure.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet[0].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "pe_master" {
  name                = "pemaster"
  resource_group_name = azurerm_resource_group.pe_infrastructure.name
  location            = azurerm_resource_group.pe_infrastructure.location
  size                = "Standard_A1"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.pe_master_nic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "openLogic"
    offer     = "CentOS"
    sku       = "7.3"
    version   = "latest"
  }
}
