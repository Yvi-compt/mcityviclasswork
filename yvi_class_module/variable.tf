variable "storage_account_name" {
  description = "The name of the storage account"
}
variable "account_replication_type" {
  description = "The storage account replication type"
  default     = "LRS"
}
variable "admin_user"{
type=string
}
/*variable "admin_password"{
type=string
}
*/
