resource "aws_security_group" "terraform-security-group" {
  name = "terraform-security-group"
  description = "Allow All IP Ports"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"  # allow all protocols (all= "-1")
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  tags = {
    "Name" = "terraform-security-group"
  }
}

resource "aws_instance" "terraform-instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.terraform-security-group.id]

  tags = {
    Name = "HelloWorld"
  }
}