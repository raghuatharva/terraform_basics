resource "aws_route53_record" "r" {
  for_each = aws_instance.ec2
  zone_id  = var.zone
  name     = each.key == "frontend" ? var.domain : "${each.key}.${var.domain}"
  type     = "A"
  ttl      = 1
  records  = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
}