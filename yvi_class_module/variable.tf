variable "storage_account_name" {
  description = "The name of the storage account"
}

variable "resource_group_name" {
  description = "The name of the storage account resource group"
}

variable "location" {
  description = "The Azure region where the storage account will be created"
  default     = "eastus"
}

variable "account_tier" {
  description = "The storage account tier (Standard or Premium)"
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The storage account replication type"
  default     = "LRS"
}
variable "admin_user"{
type=string
}
variable "admin_password"{
type=string
}
