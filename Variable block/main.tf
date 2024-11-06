resource "aws_instance" "this_ubuntu" {

    ami = "ami-0c8cbc55eb5f3c5cc" 
    disable_api_stop  = false 
    disable_api_termination = false  
    instance_type = "t2.micro" 

    vpc_security_group_ids = ["sg-0063c7dcb89f09c9b" , ]
    count = 2  #loop 
    tags = {
      purpose = "webserver"
    } 
    

}    