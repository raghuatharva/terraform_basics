variable "instance_names" {
  default = ["mysql", "frontend", "backend"]
}

variable "zone_id" {
  default = "Z03859221N2TA86NGELJL"
}
variable "domain" {
  default = "rohanandlife.site"
}

variable "comman_tags" {
  type = map(any)
  default = {
    Environment = "dev"
    Version     = "gottilla"
    Terraform   = "true"
  }

}