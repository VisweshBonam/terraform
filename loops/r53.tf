resource "aws_route53_record" "Route53-Records" {
    count = 4
   zone_id = var.zone_id
    name    = "${var.instances[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [aws_instance.terraform-instance[count.index].private_ip]
}