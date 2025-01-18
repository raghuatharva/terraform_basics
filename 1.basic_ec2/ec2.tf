resource "aws_instance" "first_ec2" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_22.id]
  tags = {
    Name = "first-ec2"
  }
}

resource "aws_security_group" "allow_22" {
  name        = "allow_ssh"
  description = " allow port 22 for ssh access"

  #usually we allow everything in egress==> outbound rules
  egress {
    from_port   = 0    # all ports 
    to_port     = 0    # all ports 
    protocol    = "-1" #all protocols and its a string (number and alphabetical both , hence "")
    cidr_blocks = ["0.0.0.0/0"]
  }

  #inbound rules 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-sssh"
  }
}