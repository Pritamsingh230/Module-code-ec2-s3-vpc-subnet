variable "terra_ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  default     = "ami-0866a3c8686eaeeba"

  type = string
}
variable "instance_name1" {
  description = "The name tag for the EC2 instance"
  default     = "instance1"
  type        = string
}
variable "instance_typee" {
  description = "Instance type"
  default     = "t2.micro"
  type        = string
} 

variable "bucket_name2" {
  description = "The name of S3 buckets"
  type = string
  default = "my-bucket-instance-s453"
}



# variable "vpc_name1" {
#   description = "The name of the VPC"
#   type        = string
#   default = "my-vpc1"
# }






variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
  default     = "my-vpc1"
}


variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}


variable "subnet_name" {
  description = "Base name for the subnets"
  type        = string
  default     = "subnet"
}

variable "public_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

