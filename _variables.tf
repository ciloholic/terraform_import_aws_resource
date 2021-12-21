variable "aws_access_key" {
  type      = string
  sensitive = true
}
variable "aws_secret_key" {
  type      = string
  sensitive = true
}
variable "service_name" {
  type = string
}
variable "env" {
  type = string
}

locals {
  service_config = {
    name   = var.service_name
    env    = var.env
    prefix = "${var.service_name}-${var.env}"
  }
}
