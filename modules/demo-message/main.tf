resource "null_resource" "demo_message" {
  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}
