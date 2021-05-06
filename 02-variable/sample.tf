variable "a" {
  default = 100
}

output "a" {
    value = var.a
}

variable "normal" {
  default =10
}
variable "list" {
  default = [ 100 , "abc" , true ]
}

output "list-1" {
  value = var.list[0]
}

output "list-2" {
  value = var.list[1]
}

output "list-3" {
  value = var.list[2]
}