resource "aws_instance" "this_ubuntu" {
    ami =  data.aws_ami.this_aws_ami.id   #var.this_image_id 
    disable_api_stop  = var.this_any.api_stop_ec2  #var.this_disable_api_stop 
    disable_api_termination =  var.this_any.api_termination_ec2  #var.this_disable_api_termination  
    instance_type = var.this_list[0]  #var.this_any.instance_type_list[0]
    
    tags = {
       purpose = var.this_map.purposeec2    #var.this_any.tags_map.purposeec2
       #purpose = "webserver"
    } 
    
}  

#data.aws_security_group.lb_sg.attribute