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

#variable type -MAP

variable "map" {
  default = {
    course-name = "DevOps"
    trainer = "Raju"
  }
}
output "COURSE_NAME" {
  value = var.map["course-name"]
}


output "COURSE" {
  value = "Welcome to ${var.map["course-name"]}Training , Trainer is ${var.map["trainer"]}"
}