variable "localstack_enabled" {
  description = "Ativa endpoints do LocalStack em vez da AWS real. DynamoDB e totalmente suportado pelo LocalStack Community."
  type        = bool
  default     = false
}

provider "aws" {
  region = var.aws_region

  access_key                  = var.localstack_enabled ? "test" : null
  secret_key                  = var.localstack_enabled ? "test" : null
  skip_credentials_validation = var.localstack_enabled
  skip_metadata_api_check     = var.localstack_enabled
  skip_requesting_account_id  = var.localstack_enabled

  dynamic "endpoints" {
    for_each = var.localstack_enabled ? [1] : []
    content {
      dynamodb = "http://localhost:4566"
      iam      = "http://localhost:4566"
      sts      = "http://localhost:4566"
    }
  }
}
