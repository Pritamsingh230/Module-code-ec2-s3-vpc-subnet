resource "aws_internet_gateway" "gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name = "Internet Gateway"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = var.public_subnet_id
  route_table_id = var.public_route_table_id
}

resource "aws_route_table_association" "private" {
  subnet_id      = var.private_subnet_id
  route_table_id = var.private_route_table_id
}
