output private_subnet_01_rtb_id{
    description = "Provide private subnet 01 rtb id"
    value = aws_route_table.private_subnet_01_rtb.id
}


output private_subnet_02_rtb_id{
    description = "Provide private subnet 02 rtb id"
    value = aws_route_table.private_subnet_02_rtb.id
}