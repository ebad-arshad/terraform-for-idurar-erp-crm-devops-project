resource "aws_instance" "idurar_instance" {
  ami                         = "ami-02b8269d5e85954ef"
  instance_type               = "t3.micro"
  key_name                    = "terraform"
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "idurar_instance"
  }
}
