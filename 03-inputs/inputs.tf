#inputs should be loaded in variables

variable "abc" { }

#inuts type - after terraform apply execution

output "abc" {
  value = var.abc
}