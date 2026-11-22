# DynamoDB Customers table outputs
output "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB Customers (usar em pos_tech_fiap_lambda_terraform/envs/*.tfvars como dynamodb_table_name)"
  value       = module.master.table_name
}

output "dynamodb_table_arn" {
  description = "ARN da tabela DynamoDB Customers"
  value       = module.master.table_arn
}

output "dynamodb_table_id" {
  description = "ID da tabela DynamoDB Customers"
  value       = module.master.table_id
}
