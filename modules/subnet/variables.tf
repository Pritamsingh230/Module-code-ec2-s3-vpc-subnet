variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_name_prefix" {
  description = "Prefix for subnet names"
  type        = string
  default     = "my-subnet"
}
