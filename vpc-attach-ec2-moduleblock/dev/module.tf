module "vpc" {
  source                       = "/home/cloudshell-user/Terraform/vpc-attach-ec2-moduleblock/resorce/vpc"
  this_vpc_cidr_block          = "12.11.0.0/16"
  this_vpc_tags                = "this_vpc"
  this_subnet_pub_cidr_block   = "12.11.0.0/17"
  this_subnet_pub_map_ip       = true 
  this_subnet_pub_tags         = "pub_subnet"
  this_vpc_az                  = "us-west-1a"
}

module "ec2" {
  source                       = "/home/cloudshell-user/Terraform/vpc-attach-ec2-moduleblock/resorce/ec2"
  this_image_id                = "ami-0da424eb883458071"
  this_list                    = "t2.micro"
  this_disable_api_stop        = false
  this_disable_api_termination = false
  this_aws_instance_subnet     = module.vpc.subnet_id 
#connecting vpc to ec2   module.vpc.attribute
#  this_aws_vpc_id = module.aws_vpc.aws_vpc_id #here aws_vpc name is vpc
  #this_aws_instance_subnet = module.aws_vpc.aws_subnet_main


  #sg is already mention in variable.tf
}
