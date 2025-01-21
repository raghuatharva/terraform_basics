output "public_ip_kaavali" {
  value = aws_instance.first_ec2.public_ip
   description = "this will fetch public ip from the aws using terraform"
}
