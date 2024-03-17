module "master" {
  source = "./modules/master"

  table_name     = var.table_name
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  tags           = var.tags
}

