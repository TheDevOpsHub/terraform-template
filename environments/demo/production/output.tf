output "demo_message_output" {
  description = "Output from the demo module in the Production environment"
  value       = module.demo.demo_output_message
}
