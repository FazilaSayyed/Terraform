# Create a new security group
resource "aws_security_group" "example_sg" {
  name        = "example-security-group"
  description = "Security group for example application"
  vpc_id      = "vpc-00dfca8f018d8f5d3"  # Replace with your VPC ID

  # Ingress rules
  ingress {
    description      = "Allow HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
