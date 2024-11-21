module "vpc" {
  source                       = "/home/cloudshell-user/Terraform/Module/resources/vpc"
  this_vpc_cidr_block          = "12.11.0.0/16"
  this_vpc_tags                = "this_vpc"
  this_subnet_pub_cidr_block   = "12.11.0.0/17"
  this_subnet_pub_map_ip       = true 
  this_subnet_pub_tags         = "pub_subnet"
  this_vpc_az                  = "us-west-1a"
}

module "ec2" {
  source                       = "/home/cloudshell-user/Terraform/Module/resources/ec2"
  this_image_id                = "ami-0da424eb883458071"
  this_list                    = "t2.micro"
  this_disable_api_stop        = false
  this_disable_api_termination = false
  this_aws_instance_subnet     = module.vpc.subnet_id
}