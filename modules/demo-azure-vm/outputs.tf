output "vm_ip" {
  description = "Public IP address of the provisioned VM"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}
