resource "aws_vpc" "idurar_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "idurar_vpc"
  }
}

resource "aws_subnet" "idurar_subnet" {

  vpc_id                  = aws_vpc.idurar_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "idurar_subnet"
  }
}

resource "aws_internet_gateway" "idurar_internet_gateway" {
  vpc_id = aws_vpc.idurar_vpc.id


  tags = {
    Name = "idurar_internet_gateway"
  }
}


resource "aws_route_table" "idurar_route_table" {
  vpc_id = aws_vpc.idurar_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.idurar_internet_gateway.id
  }

  tags = {
    Name = "idurar_route_table"
  }
}

resource "aws_route_table_association" "idurar_association" {
  subnet_id      = aws_subnet.idurar_subnet.id
  route_table_id = aws_route_table.idurar_route_table.id
}
