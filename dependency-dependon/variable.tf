variable "this_image_id" {
   default = ""
   type = string
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
   type = string
}

variable "this_disable_api_termination" {
   default = false
   type = bool
}


variable "this_tags" {
   default = "purpose"
   type = string
}


variable "this_vpc_cidr_block" {
   default = "12.11.0.0/16"
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