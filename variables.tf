variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "admin_username" {
  description = "The admin username of the VM that will be deployed"
  default     = "adminuser"
}

variable "admin_password"{
type=string
}
variable "storage_account_type" {
  description = "Defines the type of storage account to be created. Valid options are Standard_LRS, Standard_ZRS, Standard_GRS, Standard_RAGRS, Premium_LRS."
  default     = "Premium_LRS"
}
variable "vm_size" {
  description = "Specifies the size of the virtual machine."
  default     = "Standard_DS1_V2"
}
variable "vm_hostname" {
  description = "local name of the VM"
  default     = "myvm"
}
variable "vm_os_simple" {
  description = "Specify UbuntuServer, WindowsServer, RHEL, openSUSE-Leap, CentOS, Debian, CoreOS and SLES to get the latest image version of the specified os.  Do not provide this value if a custom value is used for vm_os_publisher, vm_os_offer, and vm_os_sku."
  default     = ""
}
variable "vm_os_id" {
  description = "The resource ID of the image that you want to deploy if you are using a custom image.Note, need to provide is_windows_image = true for windows custom images."
  default     = ""
}
variable "is_windows_image" {
  description = "Boolean flag to notify when the custom image is windows based. Only used in conjunction with vm_os_id"
  default     = "false"
}
variable "vm_os_publisher" {
  description = "The name of the publisher of the image that you want to deploy. This is ignored when vm_os_id or vm_os_simple are provided."
  default     = ""
}
variable "vm_os_offer" {
  description = "The name of the offer of the image that you want to deploy. This is ignored when vm_os_id or vm_os_simple are provided."
  default     = ""
}
variable "vm_os_sku" {
  description = "The sku of the image that you want to deploy. This is ignored when vm_os_id or vm_os_simple are provided."
  default     = ""
}
variable "vm_os_version" {
  description = "The version of the image that you want to deploy. This is ignored when vm_os_id or vm_os_simple are provided."
  default     = "latest"
}
variable "data_sa_type" {
  description = "Data Disk Storage Account type"
  default     = "Standard_LRS"
}
variable "data_disk_size_gb" {
  description = "Storage data disk size size"
  default     = ""
}
variable "data_disk" {
  type        = "string"
  description = "Set to true to add a datadisk."
  default     = "false"
}
variable "boot_diagnostics" {
  description = "(Optional) Enable or Disable boot diagnostics"
  default     = "false"
}
variable "boot_diagnostics_sa_type" {
  description = "(Optional) Storage account type for boot diagnostics"
  default     = "Standard_LRS"
}


