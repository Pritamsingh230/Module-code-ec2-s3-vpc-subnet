variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "public_route_table_id" {
  description = "The public route table ID"
  type        = string
}

variable "private_route_table_id" {
  description = "The private route table ID"
  type        = string
}

variable "public_subnet_id" {
  description = "The public subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "The private subnet ID"
  type        = string
}
