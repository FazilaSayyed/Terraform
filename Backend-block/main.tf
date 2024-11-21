#LockID
terraform {
    backend "s3" {
        bucket = "bucketaws38"
        key = "terraform.tfstate"
        dynamodb_table = "dynamo38"
        region = "us-west-1"
        profile = "configs"
        shared_credentials_files = ["/home/cloudshell-user/.aws/credentials"]
    }
}


resource "aws_instance" "ths_instance" {
  ami = "ami-0da424eb883458071"
  //key_name = "navidali"
  instance_type = "t2.micro"
  //security_groups = ["sg-0063c7dcb89f09c9b"]
  count = 1
  
  
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo echo "hello world this is Batch38" >> /var/www/html/index.html
    EOF
   tags = {
    Name = "first_terraform_instance"

  } 
    
}