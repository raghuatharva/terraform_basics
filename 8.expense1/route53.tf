
resource "aws_route53_record" "first" {
  count   = length(var.instance_names)
  zone_id = var.zone_id
  type    = "A"
  ttl     = 1
  allow_overwrite = true
  name    = var.instance_names[count.index] == "frontend" ? var.domain : "${var.instance_names[count.index]}.${var.domain}"
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.first_ec2[count.index].public_ip] : [aws_instance.first_ec2[count.index].private_ip]
}