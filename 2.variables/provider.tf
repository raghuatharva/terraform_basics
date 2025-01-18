terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

# here we configure AWS provider
provider "aws" {
  #configuration options
  region = "us-east-1"
  # here we also put access key but its being pushed to github , so avoiding it
  # other than that , we dont put much here
}