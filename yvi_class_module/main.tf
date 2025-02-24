resource "azurerm_network_interface" "yvivm_nic" {
  name                = "${var.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "yvivm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.yvivm_nic.id]
  vm_size               = var.vm_size

  storage_os_disk {
    name              = "${var.vm_name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.is_windows ? var.admin_password : null
  }

  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      path     = "/home/${var.admin_username}/.ssh/authorized_keys"
      key_data = var.is_windows ? "" : file(var.ssh_key_path)
    }
  }

  /*source_image_reference {
    publisher = var.is_windows ? "MicrosoftWindowsServer" : "Canonical"
    offer     = var.is_windows ? "WindowsServer" : "UbuntuServer"
    sku       = var.is_windows ? "2019-Datacenter-smalldisk" : "20.04-LTS"
    version   = "latest"
  }*/
}

