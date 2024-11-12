  output "instancepublic_ip" {
    value = aws_instance.this_ubuntu.public_ip
  }

  output "instance_id" {
    value = aws_instance.this_ubuntu.id
  }