provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Resource group for the dev environment VM
resource "azurerm_resource_group" "vm_rg" {
  name     = "demo-azure-vm-dev-rg"
  location = var.location
}


resource "azurerm_virtual_network" "vm_network" {
  name                = "demo-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.vm_rg.name
}

resource "azurerm_subnet" "vm_subnet" {
  name                 = "demo-subnet"
  resource_group_name  = azurerm_resource_group.vm_rg.name
  virtual_network_name = azurerm_virtual_network.vm_network.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "vm_nic" {
  name                = "demo-nic"
  location            = var.location
  resource_group_name = azurerm_resource_group.vm_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vm_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "vm" {
  name                  = "demo-vm"
  resource_group_name    = azurerm_resource_group.vm_rg.name
  location              = var.location
  network_interface_ids = [azurerm_network_interface.vm_nic.id]
  vm_size               = var.vm_size

  storage_os_disk {
    name              = "osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "demo-vm"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
    # ssh_keys {
    #   path     = "/home/${var.admin_username}/.ssh/authorized_keys"
    #   key_data = var.ssh_public_key
    # }
  }
}

resource "azurerm_public_ip" "vm_public_ip" {
  name                = "demo-public-ip"
  location            = var.location
  resource_group_name = azurerm_resource_group.vm_rg.name
  allocation_method   = "Dynamic"
}

output "public_ip" {
  value = azurerm_public_ip.vm_public_ip.ip_address
}
