variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "Base name for the subnets"
  type        = string
}

variable "public_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
}
