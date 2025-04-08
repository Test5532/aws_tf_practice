variable vpc_id{
    type = string
    description = "The VPC ID to provide for subnet"
}


variable igw_id{
    type = string
    description = "The igw id for route to public subnet"
}

# RTB 1

variable internet_route_cidr_block_rtb1{
    type = string
    description = "The internet_route_cidr_block_rtb1 to provide for subnet"
    
}

variable public_subnet_01_id{
    type = string
    description = "The public_subnet_01_cidr_block to provide for subnet"
}


# RTB 2

variable internet_route_cidr_block_rtb2{
    type = string
    description = "The internet_route_cidr_block_rtb2 to provide for subnet"
    
}

variable public_subnet_02_id{
    type = string
    description = "The public_subnet_01_cidr_block to provide for subnet"
}
