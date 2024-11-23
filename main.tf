#EC2 Module

module "ec2_inst" {
  source = "git::https://github.com/Pritamsingh230/Module-code-ec2-s3-vpc-subnet.git//modules/ec2"

  ami_id         = var.terra_ami_id
  instance_type1 = var.instance_typee
  instance_name  = var.instance_name1
}

# S3 Module

module "s3_bucket" {
  source = "git::https://github.com/Pritamsingh230/Module-code-ec2-s3-vpc-subnet.git//modules/s3"
  bucket_name1 = var.bucket_name2
}

# #VPC Module

# module "vpc" {
#   source = "git::https://github.com/Pritamsingh230/Module-code-ec2-s3-vpc-subnet.git//modules/vpc"
#   vpc_name = var.vpc_name1

# }




# 2. Create VPC using the GitHub module
module "vpc" {
  source         = "git::https://github.com/Pritamsingh230/Module-code-ec2-s3-vpc-subnet.git//modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name       = var.vpc_name
}


# Create Subnets using the GitHub module
module "subnet" {
  source             = "git::https://github.com/Pritamsingh230/Module-code-ec2-s3-vpc-subnet.git//modules/subnet"
  vpc_id             = module.vpc.vpc_id  
  subnet_name        = var.subnet_name
  public_cidr_block  = var.public_cidr_block
  private_cidr_block = var.private_cidr_block
}

module "route_table" {
  source = "git::https://github.com/Pritamsingh230/Module-code-ec2-s3-vpc-subnet.git//modules/route-table"
  vpc_id = module.vpc.vpc_id
  public_subnet_id  = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
  gateway_id        = module.nat_gateway.gateway_id
}

module "nat_gateway" {
  source             = "git::https://github.com/Pritamsingh230/Module-code-ec2-s3-vpc-subnet.git//modules/internet-gateway"
  vpc_id             = module.vpc.vpc_id
  public_route_table_id  = module.route_table.public_route_table_id
  private_route_table_id = module.route_table.private_route_table_id
  public_subnet_id  = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
}















