variable "sg_name" {
  type = string
  default = "terraform-security-group"
  description = "Security Group Name"  # descripotion is optional
}

variable "description" {
    type = string
    default = "Allow All IP Ports"
}

variable "from_port" {
  type = number
  default = 0
}

variable "to_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "ipv6_cidr_blocks" {
  type = list(string)
  default = [ "::/0" ]
}

variable "sg_tags" {
  type = map(string)
  default = {
    "Name" = "terraform-security-group"
  }
}

variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    "Name" = "terraform-instance"
  }
}

variable "environment" {
  type = string
  default = "dev"
}

#Using count loop
variable "instances" {
  type = list(string)
  default = [ "mongodb", "mysql", "redis", "rabbitmq" ]
}

variable "zone_id" {
  type = string
  default = "Z060825238ARF2ALFTJ5X"
}

variable "domain_name" {
  type = string
  default = "liveyourlife.site"
}