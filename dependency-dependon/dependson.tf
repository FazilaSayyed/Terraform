resource "aws_instance" "this_ubuntu" {
    ami =  var.this_image_id 
    disable_api_stop  =  var.this_disable_api_stop 
    disable_api_termination = var.this_disable_api_termination  
    instance_type = var.this_instance_type
    depends_on = [aws_subnet.this_subnet_pub]
    tags = {
       purpose = var.this_tags
    } 
    
}  



resource "aws_vpc" "this_vpc" {
    cidr_block = var.this_vpc_cidr_block //"12.11.0.0/16"
    tags =  {
        Name = var.this_vpc_tags //"this_vpc"
    }
}



resource "aws_subnet" "this_subnet_pub" {
  vpc_id     = aws_vpc.this_vpc.id  #referedresourceblock'sProvider_referedresourceblock'sresourcetype.referedresourceblocksuniqueresourceblockname.attributeofresource
  availability_zone = "us-west-1a"
  cidr_block = var.this_subnet_pub_cidr_block      //"12.11.0.0/17"  
  map_public_ip_on_launch = var.this_subnet_pub_map_ip //true
  depends_on = [aws_vpc.this_vpc]
  tags = {
    Name = var.this_subnet_pub_tags //"pub_subnet"
  }

}  
