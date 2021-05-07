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