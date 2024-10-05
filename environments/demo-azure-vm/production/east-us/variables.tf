variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "PROD-rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}

variable "vm_size" {
  type        = string
  description = "vm_size"
  default     = "Standard_DS1_v2"
}

variable "vm_hostname" {
  type        = string
  description = "vm_hostname"
  default     = "prod-azurevm"
}