variable "this_vpc_cidr_block" {
  type    = string
  default = "12.11.0.0/16" # Replace with your desired CIDR block
}

variable "this_vpc_tags" {
  type    = map(string)
  default = { 
    Name = "this_vpc" # Replace with your desired tags
  }
}
