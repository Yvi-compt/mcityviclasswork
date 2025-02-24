variable "vm_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}
variable "vm_size" {}
variable "admin_username" {}
variable "admin_password" {
type = string
}
variable "is_windows" { type = bool }
variable "ssh_key_path" { default = "~/.ssh/id_rsa.pub" }
