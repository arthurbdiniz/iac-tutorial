resource "aws_ssm_parameter" "foo" {
  name  = "unb-${var.name}"
  type  = "String"
  value = "bar"
}

variable "name" {
  default = "" # Add here your name
  type = string
}