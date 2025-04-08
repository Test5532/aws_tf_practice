output public_subnet_01_rtb_id{
    description = "Provide public subnet 01 rtb id"
    value = aws_route_table.public_subnet_01_rtb.id
}


output public_subnet_02_rtb_id{
    description = "Provide public subnet 02 rtb id"
    value = aws_route_table.public_subnet_02_rtb.id
}