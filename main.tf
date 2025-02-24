/*provider "azurerm" {
  features {}
}*/

resource "azurerm_resource_group" "yvirg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "yvivnet" {
  name                = "myVNet"
  location            = var.location
  resource_group_name = azurerm_resource_group.yvirg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "mySubnet"
  resource_group_name  = azurerm_resource_group.yvirg.name
  virtual_network_name = azurerm_virtual_network.yvivnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

module "linux_vm" {
  source              = "./yvi_class_module"
  vm_name             = "linux-vm"
  location           = var.location
  resource_group_name = azurerm_resource_group.yvirg.name
  subnet_id          = azurerm_subnet.subnet.id
  vm_size            = "Standard_B2ms"
  admin_username     = "azureuser"
  is_windows         = false
  ssh_key_path       = "~/.ssh/id_rsa.pub"
}

module "windows_vm" {
  source              = "./yvi_class_module"
  vm_name             = "windows-vm"
  location           = var.location
  resource_group_name = azurerm_resource_group.yvirg.name
  subnet_id          = azurerm_subnet.subnet.id
  vm_size            = "Standard_B2ms"
  admin_username     = "adminuser"
  admin_password     = var.admin_password
  is_windows         = true
}
