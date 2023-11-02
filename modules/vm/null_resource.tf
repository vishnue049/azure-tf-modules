resource "null_resource" "cluster" {
  count = var.machine_count
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx jq net-tools unzip",
      "echo \"<center><h1>Deployed By Terraform</h1></center>\" | sudo tee -a /var/www/html/index.html"
    ]
    connection {
      type        = "ssh"
      user        = "adminsree"
      password = var.admin_password
      #host     = "${aws_instance.web-1.public_ip}"
      host = element(azurerm_public_ip.vms.*.ip_address, count.index)
    }
  }
}