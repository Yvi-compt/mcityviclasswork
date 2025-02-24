location = "eastus"
ssh_key = "~/.ssh/id_rsa.pub"
#resource_group_name = "azure_compute_e2e"
vm_os_simple = "UbuntuServer"
variable "ssh_key_data" {
  default = "ssh-rsa AAAAB3..."
}
