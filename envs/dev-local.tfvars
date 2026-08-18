# terraform apply -var-file=envs/dev-local.tfvars -var="localstack_enabled=true"
aws_region     = "us-east-1"
table_name     = "Customers-dev"
read_capacity  = 1
write_capacity = 1
hash_key       = "cpf"
tags           = { Environment = "dev-local", Name = "Customers" }
