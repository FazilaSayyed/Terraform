

variable "this_image_id" {
  default = "ami-0da424eb883458071"
  type    = string
}



variable "this_disable_api_stop" {
   default = false
   type = bool

}

variable "this_disable_api_termination" {
  default = false
  type = bool

}

variable "this_instance_type" {
    default = "t3.micro"
    type = string
     
}

variable "this_map" {
   default = "purposeec2" 
   type = string
}


variable "this_vpc_cidr_block" {
  default =  "12.11.0.0/16"
  type = string
}



variable "this_vpc_tags" {
    default = "this_vpc"
    type = string
}



variable "this_subnet_pub_cidr_block" {
    default = "12.11.0.0/17"
    type = string
}



variable "this_subnet_pub_map_ip" {
    default = true
    type = bool
}


variable "this_subnet_pub_tags" {
    default = "pub_subnet"
    type = string
}
