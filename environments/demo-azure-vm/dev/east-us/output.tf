output "resource_group_name" {
  value = module.demo_azure_vm.resource_group_name
}

output "public_ip_address" {
  value = module.demo_azure_vm.public_ip_address
}

output "key_data" {
  value = module.demo_azure_vm.key_data
}

output "private_key_data" {
  value = module.demo_azure_vm.private_key_data
}
