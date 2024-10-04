# provider "azurerm" {
#   features {}
# }

module "demo_azure_vm" {
  source         = "../../../../modules/demo-azure-vm"
  location       = var.location
  vm_size        = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  ssh_public_key = var.ssh_public_key
  subscription_id = var.subscription_id
}
