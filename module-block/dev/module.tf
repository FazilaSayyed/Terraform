module "ec2" {
    source = "/opt/Terraform/Terraform block/Module block/Resources/EC2"
    this_ami = "ami-0819a8650d771b8be"
    this_instance_type = "t2.micro"
    this_associate_public_ip = true
    this_security_group = "sg-0063c7dcb89f09c9b"
    this_instance_name = "ExampleInstance"
    this_key_name ="navidali"
}