output "vm_id" {
  value = azurerm_virtual_machine.yvivm.id
}

output "vm_ip" {
  value = azurerm_network_interface.yvivm_nic.private_ip_address
}
