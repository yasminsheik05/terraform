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