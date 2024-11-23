variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default = "vpc23"
}

variable "subnet_name" {
  description = "Name of the subnets"
  type        = string
  default = "subnet12"
}

variable "region" {
  description = "Region to deploy resources"
  type        = string
  default     = "us-east-1"
}


