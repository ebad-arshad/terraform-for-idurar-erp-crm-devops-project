resource "aws_security_group" "idurar_security_group" {
  name        = "idurar_security_group"
  description = "Allow inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "idurar_security_group"
  }
}

resource "aws_vpc_security_group_ingress_rule" "http_inbound" {
  security_group_id = aws_security_group.idurar_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "ssh_inbound" {
  security_group_id = aws_security_group.idurar_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "outbound_rules" {
  security_group_id = aws_security_group.idurar_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}