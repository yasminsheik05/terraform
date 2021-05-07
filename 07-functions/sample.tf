resource "aws_instance" "sample" {
  ami                       = "ami-079a3f3cf00741286"
  instance_type             = "t2.micro"
  tags  = {
    Name = upper(var.name)
  }
}

variable "name" {
  default = "sample"
}

variable "image_id" {
  type  = string
  description = "the id of the machine image (AMI) to use for the server"
  validation {
    condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4 ) == "ami-"
    error_message = "the image_id value must be avoid AMI id, satrting with \"ami-\"."
  }
}

provider "aws" {
  region = "us-east-1"
}