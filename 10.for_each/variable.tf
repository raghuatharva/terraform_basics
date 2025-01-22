variable "instances" {
  type = map(any)
  default = {
    frontend = "t2.micro"
    backend  = "t2.small"
    mysql    = "t2.micro"
  }
}

variable "zone" {
  default = "Z03859221N2TA86NGELJL"
}
variable "domain" {
  default = "rohanandlife.site"
}