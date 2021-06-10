resource "aws_instance" "create_by_terraform" {
  instance_type = var.instance_type
  ami           = var.instance_ami
  tags = {
    "Name" = "create_by_terraform"
  }
}
