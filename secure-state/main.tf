resource "aws_instance" "JoinDevOps" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_default_new.id]

  tags = {
    Name = "JoinDevOps-1"
  }
}

resource "aws_security_group" "allow_default_new" {
  name        = "allow_default_new"
  description = "sg for allow_default_new"
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
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
    Name = "allow_default_new"
  }
}
