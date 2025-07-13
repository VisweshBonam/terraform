resource "aws_instance" "JoinDevOps" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.new_sg.id]

  tags = {
    Name = "JoinDevOps-2"
  }
}

resource "aws_security_group" "new_sg" {
  name        = "new-sg"
  description = "sg for new-sg"
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
    Name = "new-sg"
  }
}
