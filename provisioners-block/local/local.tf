provider "aws" {
     
region = "us-west-1"
     profile = "configs"
}


resource "aws_instance" "this_aws_instance" {
    ami = "ami-0da424eb883458071"
    vpc_security_group_ids = ["sg-0063c7dcb89f09c9b"]
    key_name = "navidali"
    instance_type = "t2.micro"
   
   
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> /tmp/private_ips.txt "
  }
  provisioner "local-exec" {
    working_dir = "/tmp/"
    command = "echo ${self.private_ip} >> workingdir_private_ips.txt "
  }

}
