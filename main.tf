resource "aws_instance" "aws_rhel_project" {
  ami                    = "ami-02f0e5fd663a974aa" # RHEL AMI
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.projectSG.id]
  subnet_id              = aws_subnet.publicSubnet01.id
  key_name               = "terraform-keyincalifornia"

  tags = {
    Name = "frontend"
    OS   = "RHEL01"
  }
}

resource "aws_instance" "aws_rhel_project02" {
  ami                    = "ami-02f0e5fd663a974aa" # RHEL AMI
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.projectSG.id]
  subnet_id              = aws_subnet.publicSubnet01.id
  key_name               = "terraform-keyincalifornia"

  tags = {
    Name = "backend_instance"
    OS   = "RHEL"
  }
}

resource "aws_instance" "aws_ubuntu_instance" {
  ami                    = "ami-014e30c8a36252ae5" # Ubuntu AMI
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.projectSG.id]
  subnet_id              = aws_subnet.publicSubnet02.id
  key_name               = "terraform-keyincalifornia"

  tags = {
    Name = "database"
    OS   = "Ubuntu"
  }
}

