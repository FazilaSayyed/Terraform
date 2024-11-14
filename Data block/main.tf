resource "aws_instance" "this_ubuntu" {
    
   ami =  data.aws_ami.this_aws.id     

   #data.provider_resourcename.uniquename.attribute

    disable_api_stop  = var.this_disable_api_stop 
    disable_api_termination = var.this_disable_api_termination  
    instance_type = var.this_instance_type
   
    vpc_security_group_ids = data.aws_security_group.this_sg.id
    #count = var.this_count  #loop #var.this_list[1]
    tags = {
      purpose = "webserver"
    } 
    

}  