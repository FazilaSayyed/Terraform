  ouput "instancepublic_ip" {
    value = aws_instance.this_ubuntu.public_ip
  }

  ouput "instance_id" {
    value = aws_instance.this_ubuntu.instance_id
  }