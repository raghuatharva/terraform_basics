variable "congress" {
  default = [
    { # ingress for port 22--> ssh
      from_port   = 22
      to_port     = 22
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
       description        = "ssh"
    },

    { # ingress for port 80--> http
      from_port   = 80
      to_port     = 80
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
      description        = "http"
    },

    { # ingress for port 443--> https
      from_port   = 443
      to_port     = 443
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
       description        = "https"
    },

    { # ingress for port 22--> database
      from_port   = 3306
      to_port     = 3306
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
       description        = "mysql"
    },
  ]
}