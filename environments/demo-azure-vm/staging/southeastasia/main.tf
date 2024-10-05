module "demo_azure_vm" {
  source                     = "../../../../modules/demo-azure-vm"
  resource_group_location    = var.resource_group_location
  vm_size                    = var.vm_size
  resource_group_name_prefix = var.resource_group_name_prefix
  username                   = var.username
  vm_hostname                = var.vm_hostname
}
