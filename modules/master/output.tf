output "table_name" {
  description = "Nome da tabela DynamoDB Customers"
  value       = aws_dynamodb_table.dynamodb_table.name
}

output "table_arn" {
  description = "ARN da tabela DynamoDB Customers"
  value       = aws_dynamodb_table.dynamodb_table.arn
}

output "table_id" {
  description = "ID/stream ARN da tabela DynamoDB Customers"
  value       = aws_dynamodb_table.dynamodb_table.id
}
