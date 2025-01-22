resource "aws_security_group" "bg" {
  name        = "ssh-http-http-mysql"
  description = "all ports - security group"

  dynamic "ingress" {
    for_each = var.congress # here in dynamic block each.value = <blockname>.value
    content {
      from_port   = ingress.value.from_port # ingress.value is a map
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
      description       = ingress.value.description
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ports"  #capital N should be used for Name as it is a reserved keyword
    terraform   = "true"
  }
}