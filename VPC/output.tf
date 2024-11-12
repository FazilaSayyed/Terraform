# Output the VPC ID
output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

# Output the Subnet IDs
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}