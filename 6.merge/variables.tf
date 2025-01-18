variable "instance_names" {
    default = [ "mysql" , "frontend" , "backend"]
}

variable "comman_tags" {
    type = map
    default = {
        Environment = "dev"
        Version     = "gottilla"
        Terraform = "true"
    }

}