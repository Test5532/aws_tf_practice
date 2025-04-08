# RTB 1
resource "aws_route_table" "public_subnet_01_rtb" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.internet_route_cidr_block_rtb1
    gateway_id = var.igw_id
  }
  tags = {
    Name = "public_subnet_01_route_table"
  }
}

resource "aws_route_table_association" "public_subnet_01_rtb_association" {
  subnet_id      = var.public_subnet_01_id
  route_table_id = aws_route_table.public_subnet_01_rtb.id
}


# RTB 2

resource "aws_route_table" "public_subnet_02_rtb" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.internet_route_cidr_block_rtb2
    gateway_id = var.igw_id
  }
  tags = {
    Name = "public_subnet_02_route_table"
  }
}


resource "aws_route_table_association" "public_subnet_02_rtb_association" {
  subnet_id      = var.public_subnet_02_id
  route_table_id = aws_route_table.public_subnet_02_rtb.id
}
