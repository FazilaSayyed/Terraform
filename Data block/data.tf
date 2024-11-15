data "aws_ami" "example" {
    name_regex       = "ami-web"
    filter {
    name   = "name"
    values = ["ami-web"]
  }  
}

data "aws_security_group" "default"{
    name = "default"
}

/* data "aws_security_groups" "my_sg" {
   /*  filter {
    name   = "group-name"
    values = ["default"]
    } 
 
filter {
    name   = "name"
    values = ["default"]
    }
} */
