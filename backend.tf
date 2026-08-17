# Backend local por padrao (gratis). Hom/prod: terraform init -backend-config=envs/<env>-backend.hcl
terraform {
  backend "local" {
    path = "state/terraform.tfstate"
  }
}
