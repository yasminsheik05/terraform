module "module1" {
  source = "./module1"
  INSTANCE_TYPE = "t2.micro"
}

provider "aws" {
  region = "us-east-1"
}