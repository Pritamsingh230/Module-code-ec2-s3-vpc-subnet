resource "aws_subnet" "public" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = format("%s-public", var.subnet_name_prefix)
  }
}

resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = format("%s-private", var.subnet_name_prefix)
  }
}
