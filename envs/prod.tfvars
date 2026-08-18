aws_region     = "us-east-1"
table_name     = "Customers-prod"
read_capacity  = 5
write_capacity = 5
hash_key       = "cpf"
tags           = { Environment = "prod", Name = "Customers" }
