output "vm_public_ip" {
  description = "Public IP address of the provisioned Azure VM"
  value       = module.demo_azure_vm.vm_ip
}
