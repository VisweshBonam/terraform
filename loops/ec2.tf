resource "aws_security_group" "terraform-security-group" {
  name = var.sg_name
  description = var.description

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"  # allow all protocols (all= "-1")
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }
  
  tags = {
    "Name" = var.sg_tags.Name
  }
}

#using count loop for creating instances, we have a special variable count.index 
#creating 4 instances , so (count=4)

resource "aws_instance" "terraform-instance" {
  count = 4
  ami           = var.ami_id
  instance_type = var.environment == "dev" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.terraform-security-group.id]

  tags = {
    Name = var.instances[count.index]
  }
}

