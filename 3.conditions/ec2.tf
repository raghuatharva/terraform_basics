resource "aws_instance" "first_ec2" {
  ami                    = var.ami_id
  instance_type          = var.environment == "prod" ? "t2.micro" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_22.id]
  tags = var.tags
}

resource "aws_security_group" "allow_22" {
  name        = var.sg_name
  description = var.sg_description

  #usually we allow everything in egress==> outbound rules
  egress {
    from_port   = 0    # all ports 
    to_port     = 0    # all ports 
    protocol    = "-1" #all protocols and its a string (number and alphabetical both , hence "" )
    cidr_blocks = ["0.0.0.0/0"]
  }

  #inbound rules 
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.ingress_cidr
  }

  tags = var.tags
}