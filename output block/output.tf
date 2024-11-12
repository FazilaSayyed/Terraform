  ouput "ec2public_ip" {
    value = aws_instance.this_ubuntu.public_ip
  }