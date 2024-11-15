output "instance_ip" {
    value = aws_instance.static.public_ip
}

output "instance_id" {
    value = aws_instance.static.id
}
