variable "aws_region" {
  default = "us-east-1"
}


variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "Customers"
}

variable "read_capacity" {
  description = "The read capacity for the DynamoDB table"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "The write capacity for the DynamoDB table"
  type        = number
  default     = 5
}

variable "hash_key" {
  description = "The attribute to use as the hash (partition) key"
  type        = string
  default = "cpf"
}

variable "tags" {
  description = "A map of tags to add to the DynamoDB table"
  type        = map(string)
  default     = { Environment = "Production", Name = "Customers" }
}