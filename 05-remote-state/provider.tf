provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket     = "yasmin-terraform-state-files "
    key        = "sample/terraform.tfstate"
    regoin     = "us-east-1"
  }
}