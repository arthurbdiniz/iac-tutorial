provider "aws" {
  region  = "sa-east-1"
}

resource "aws_ssm_parameter" "foo" {
  name  = "unb-arthur"
  type  = "String"
  value = "bar"
}