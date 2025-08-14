resource "aws_vpc" "projectvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name    = "projectvpc"
    project = "vpcforproject"
  }
}

resource "aws_subnet" "publicSubnet01" {
  vpc_id                  = aws_vpc.projectvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "projectsubnet01"
  }
}

resource "aws_subnet" "publicSubnet02" {
  vpc_id                  = aws_vpc.projectvpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "projectsubnet02"
  }
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.projectvpc.id

  tags = {
    Name = "projectIG"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.projectvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table_association" "public_subnet01_association" {
  subnet_id      = aws_subnet.publicSubnet01.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet02_association" {
  subnet_id      = aws_subnet.publicSubnet02.id
  route_table_id = aws_route_table.public_rt.id
}

