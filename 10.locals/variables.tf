variable "instance_names" {
  default = ["mysql", "frontend", "backend"]
}

# count.index will not work in locals
variable "environment" {
  default = "prod"
}
locals  {
  zone_id = "Z03859221N2TA86NGELJL"
  domain  = "rohanandlife.site"
  instance_naam = var.environment == "prod" ? "t3.micro" : "t2.micro"
}
