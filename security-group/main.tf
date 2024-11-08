# Create a new security group
resource "aws_security_group" "this_sg" {
  name        = "security-group"
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

# Create an EC2 instance and attach the security group
resource "aws_instance" "this_ubuntu" {
  ami           = "ami-0c8cbc55eb5f3c5cc"  # Replace with your AMI ID
  instance_type = "t2.micro"               # Update instance type as needed

  # Attach the security group
  vpc_security_group_ids = [aws_security_group.this_sg.id]
}

