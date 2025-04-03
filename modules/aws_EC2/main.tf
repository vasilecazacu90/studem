# Create instance
resource "aws_instance" "studem_web_server" {
  ami                       = var.image_id
  instance_type             = var.instance_type
  vpc_security_group_ids    = [var.security_group_id]
  key_name                  = var.key_name
  user_data                 = file("/Users/mmu7755/studem/Studem_terraform/modules/aws_EC2/user_data.sh")
  
  tags = {
    Name = "test_StudemWebServer"
  }
}