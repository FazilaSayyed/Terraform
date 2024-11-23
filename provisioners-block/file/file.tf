provider "aws" {
    region = "us-west-1"
     profile = "configs"
}     


resource "aws_instance" "this_aws_instance" {
    ami = "ami-0da424eb883458071"
    vpc_security_group_ids = ["sg-0063c7dcb89f09c9b"]
    key_name = "navidali"
    instance_type = "t2.micro"
     
     provisioner "file" {
    source      = "readme.md"
    destination = "/home/ec2-user/readme.md"
      connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("${path.module}/id_rsa")
    host     = "${self.public_ip}"
  }
  }
}  