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
  default     = "10.0.1.0/24" # Default public subnet CIDR
}

variable "private_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24" # Default private subnet CIDR
}
