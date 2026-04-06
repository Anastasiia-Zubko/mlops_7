terraform {
  backend "s3" {
    bucket         = "tfstate-mlops-goit"
    key            = "argocd/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}