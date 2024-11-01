
resource "aws_instance" "ubuntu" {

  ami           = "ami-0c8cbc55eb5f3c5cc"
  instance_type = "t4g.nano"
  key_name      = "navidali"
  count         = 4 #loop
  tags = {
    purpose = "fazila"
  }

}