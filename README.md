# pos_tech_fiap_db

Terraform da tabela DynamoDB `Customers` usada pelo `pos_tech_fiap_lambda` (autenticação/cliente).

## Ambientes

3 ambientes (dev/hom/prod), tabelas nomeadas `Customers-dev`/`Customers-hom`/`Customers-prod`, ver `envs/`.

## Uso contra AWS real

```bash
terraform init -backend-config=envs/hom-backend.hcl
terraform workspace select -or-create hom
terraform apply -var-file=envs/hom.tfvars
```

## Uso local contra LocalStack

DynamoDB é totalmente suportado pelo LocalStack Community — o repo inteiro é testável localmente:

```bash
docker compose -f docker-compose.localstack.yml up -d
terraform init
terraform apply -var-file=envs/dev-local.tfvars -var="localstack_enabled=true" -auto-approve
# aws --endpoint-url=http://localhost:4566 dynamodb list-tables
terraform destroy -var-file=envs/dev-local.tfvars -var="localstack_enabled=true" -auto-approve
docker compose -f docker-compose.localstack.yml down
```
