resource "aws_eip" "elastic_ip_01" {
    tags = {
        Name = "eip_new"
    }

}

resource "aws_eip" "elastic_ip_02" {
    tags = {
        Name = "eip_new"
    }

}


resource "aws_nat_gateway" "nat_new_01" {
    allocation_id = aws_eip.elastic_ip_01.id
    connectivity_type = var.public_subnet_01_connectivity_type
    subnet_id = var.public_subnet_01_id
    tags = {
        Name = "nat_new_01"
    }
}


resource "aws_nat_gateway" "nat_new_02" {
    allocation_id = aws_eip.elastic_ip_02.id
    connectivity_type = var.public_subnet_02_connectivity_type
    subnet_id = var.public_subnet_02_id
    tags = {
        Name = "nat_new_02"
    }
}
