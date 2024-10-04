variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "vm_size" {
  description = "Size of the Azure VM"
  type        = string
  default     = "Standard_B1ms"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "subscription_id for the VM"
  type        = string
  sensitive   = true
}

# variable "ssh_public_key" {
#   description = "SSH public key to connect to the VM"
#   type        = string
# }
