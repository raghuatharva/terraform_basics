resource "null_resource" "xy" { # we are not using any server here, my pc is connecting directly to that through ssh 
                               # and executing the commands.
  provisioner "remote-exec" {
 inline = [
    "sudo yum install httpd -y",
    "sudo systemctl start httpd",
    "sudo systemctl enable httpd",
    "sudo echo '<h1>Deployed via Terraform remote exec</h1>' > /var/www/html/index.html"
  ]
  }

  connection {
    type        = "ssh"
    user  = "ec2-user"
    password = "DevOps321"
    # private_key = file("~/.ssh/id_rsa") # password authentification will not work in aws , only works with joindevops ami
    host        = "98.81.240.42"
  
}
}


## we dont need provider.tf for this remote exec as
# we are not creating any resources here
