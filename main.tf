
module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-0866a3c8686eaeeba"
  instance_type = "t3.medium"
}
module "s3" {
  source = "./modules/s3"

}
module "vpc" {
  source   = "./modules/vpc"
  vpc_name = "dynamic-vpc"
}

module "subnet" {
  source   = "./modules/subnet"
  vpc_id   = module.vpc.vpc_id
}



module "route_table" {
  source            = "./modules/route-table"
  vpc_id            = module.vpc.vpc_id
  public_subnet_id  = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
  gateway_id        = module.internet_gateway.gateway_id
}



module "internet_gateway" {
  source                 = "./modules/internet-gateway"
  vpc_id                 = module.vpc.vpc_id
  public_route_table_id  = module.route_table.public_route_table_id
  private_route_table_id = module.route_table.private_route_table_id
  public_subnet_id       = module.subnet.public_subnet_id
  private_subnet_id      = module.subnet.private_subnet_id
}
