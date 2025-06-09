resource "aws_route53_record" "Route53-Records" {
    for_each = aws_instance.terraform-instance
    zone_id = var.zone_id
    name    = "${each.key}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [each.value.private_ip]       
}