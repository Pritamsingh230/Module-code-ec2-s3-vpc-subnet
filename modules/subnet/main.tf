resource "aws_subnet" "public" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_cidr_block

  tags = {
    Name = format("%s-public", var.subnet_name)
  }
}

resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_cidr_block

  tags = {
    Name = format("%s-private", var.subnet_name)
  }
}
