# this script wont fit in realitime . look at line 8 and 9 , it takes frontend.rohanand life.site but i want rohanandlife.site  
#  and i want that to be public ip , not private ip.

resource "aws_route53_record" "first" {
  count   = length(var.instance_names)
  zone_id = var.zone_id
  type    = "A"
  ttl     = 1
  name    = "${var.instance_names[count.index]}.${var.domain}"
  records = [aws_instance.first_ec2[count.index].private_ip]
}