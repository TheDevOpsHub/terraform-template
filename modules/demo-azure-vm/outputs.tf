output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.public_ip_address
}

## Existed in ssh.tf. Check and migrate if needed
# output "key_data" {
#   value = azapi_resource_action.ssh_public_key_gen.output.publicKey
# }
