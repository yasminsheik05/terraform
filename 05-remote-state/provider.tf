provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket     = "my123-terraform-state-files"
    key        = "sample/terraform.tfstate"
    region     = "us-east-1"
  }
}