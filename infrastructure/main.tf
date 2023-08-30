# Define provider and authentication

provider "azurerm" {
  features {}
}

# Create Azure resources

resource "azurerm_virtual_machine" "example_vm" {
  name                  = "example-vm"
  location              = "East US"
  resource_group_name  = "example-resources"
  network_interface_ids = [azurerm_network_interface.example_nic.id]
  vm_size               = "Standard_DS1_v2"

  storage_os_disk {
    name              = "example-osdisk"
    caching           = "ReadWrite"
    create_option    = "FromImage"
  }

  os_profile {
    computer_name  = "examplevm"
    admin_username = "adminuser"
    admin_password = "Password123!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

# Define variables and outputs

variable "resource_group_name" {
  description = "Name of the resource group"
}

output "vm_name" {
  value = azurerm_virtual_machine.example_vm.name
}
