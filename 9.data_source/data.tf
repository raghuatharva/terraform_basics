data "aws_ami" "xyz" {
    most_recent = true
    owners   =   ["973714476881"]
    
    filter {
        name    =   "name"
        values   =   ["RHEL-9-DevOps-Practice"] #this is case sensitive , so use it properly as is
    }

  

}