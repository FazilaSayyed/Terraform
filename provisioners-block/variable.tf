variable "this_disable_api_stop" {
     type = bool

}

variable "this_disable_api_termination" {
  type = bool

}

variable "this_list" {
    type = string
     
}

variable "this_map.purposeec2" {
    type = string
}


variable "this_vpc_cidr_block" {
    type = "string"
}


variable "this_vpc_tags" {
    type = "string"
}



variable "this_subnet_pub_cidr_block" {
    type = "string"
}



variable "this_subnet_pub_map_ip" {
    type = "string"
}


variable "this_subnet_pub_tags" {
    type = "string"
}