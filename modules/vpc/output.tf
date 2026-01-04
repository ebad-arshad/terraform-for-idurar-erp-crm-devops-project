output "vpc_id" {
  value = aws_vpc.idurar_vpc.id
}

output "subnet_id" {
  value = aws_subnet.idurar_subnet.id
}

output "cidr_block" {
  value = aws_vpc.idurar_vpc.cidr_block
}