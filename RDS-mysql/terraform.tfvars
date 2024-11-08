  allocated_storage    = 20               
  engine               = "mysql"               
  engine_version       =  "8.0"                   
  instance_class       = "db.t4g.micro"           
  db_name              = "mydatabase_mysql_1"         
  username             = "admin"                   
  password             = "admin123"               
  parameter_group_name = "default.mysql8.0"       
  skip_final_snapshot  = true                     
  publicly_accessible  = true
  vpc_security_group_ids = "sg-0063c7dcb89f09c9b"
  multi_az             = false



#run through this command  

terraform apply -var-file="variables.tfvars"

#then only .tfvars file will run
