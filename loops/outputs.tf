output "ec2_instance_output" {
  value = aws_instance.terraform-instance
  description = "Storing output of ec2-instances"
}