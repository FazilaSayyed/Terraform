resource "aws_instance" "this_aws_instance" {
    for_each = toset(var.imageid)
    ami = each.value
    vpc_security_group_ids = ["sg-0063c7dcb89f09c9b"]
    key_name = "navidali"
    instance_type = "t3.micro"
    
}   

resource "aws_iam_user" "main_user"{
    for_each = toset(var.main_user_name)
    name = each.value
}

variable "main_user_name" {
    type = list(string)
   
    default = ["aaman1","uamr1","aaiman1"]
}

variable "imageid" {
    type = list(string)
    default = ["ami-02a7ad1c45194c72f","ami-0da424eb883458071","ami-0f201829b8afc6fdb"]

}

output "aws_ec2" {
  value = [
    for instance in var.imageid:
        aws_instance.this_aws_instance[instance].public_ip
  ]
}