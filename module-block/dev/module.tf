module "vpc" {
    source = "/home/cloudshell-user/Terraform/module-block/resources/vpc"
    this_vpc_cidr_block = "10.0.0.0/16"
    this_vpc_name = "example"
}

module "ec2" {
    source = "/home/cloudshell-user/Terraform/module-block/resources/ec2"
    this_ami = "ami-0819a8650d771b8be"
    this_instance_type = "t2.micro"
    this_associate_public_ip = true
    this_security_group = "sg-0063c7dcb89f09c9b"
    this_instance_name = "ExampleInstance"
    this_key_name = "navidali"
}
