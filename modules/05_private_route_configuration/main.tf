# RTB 1
resource "aws_route_table" "private_subnet_01_rtb" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id_public_01
  }

  tags = {
    Name = "private_subnet_01_route_table"
  }
}

resource "aws_route_table_association" "private_subnet_01_rtb_association" {
  subnet_id      = var.private_subnet_01_id
  route_table_id = aws_route_table.private_subnet_01_rtb.id
}


# RTB 2

resource "aws_route_table" "private_subnet_02_rtb" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id_public_02
  }

  tags = {
    Name = "private_subnet_02_route_table"
  }
}


resource "aws_route_table_association" "private_subnet_02_rtb_association" {
  subnet_id      = var.private_subnet_02_id
  route_table_id = aws_route_table.private_subnet_02_rtb.id
}
