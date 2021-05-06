#inputs should be loaded in variables

variable "abc" { }

#inuts type - after terraform apply execution

output "abc" {
  value = var.abc
}

#input types as a argument
variable "abc1" { }
output "abc1" {
  value = var.abc1
}

#inputs types from a file -terraform.tfvars
variable "abc2" { }
output "abc2" {
  value = var.abc2
}

#inputs from file sampl.auto.tfvars

variable "abc3" { }
output "abc3" {
  value = var.abc3
}

#inputs from SHELL ENV variables
#Export TF_VAR_abc4 = "hello abc4"

variable "abc4" { }
output "abc4" {
  value = var.abc4
}