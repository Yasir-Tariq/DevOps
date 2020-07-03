variable "vpc_cidr" {
}
variable "az" {
}
variable "private_cidr" { 
}
locals {
    public_subnet_count = length(var.az)
  }
