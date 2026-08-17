aws_region     = "us-east-1"
table_name     = "Customers-dev"
read_capacity  = 1
write_capacity = 1
hash_key       = "cpf"
tags           = { Environment = "dev", Name = "Customers" }
