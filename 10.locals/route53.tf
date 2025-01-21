resource "aws_route53_record" "kkv" {
    count = length(var.instance_names)
    ttl = 1
    type = "A"
    zone_id = local.zone_id
    name = var.instance_names[count.index] == "frontend" ? local.domain : "${var.instance_names[count.index]}.${local.domain}"
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.first[count.index].public_ip] : [aws_instance.first[count.index].private_ip]
}