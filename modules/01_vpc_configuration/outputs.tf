output "vpc_cidr_block_range" {
    value = aws_vpc.vpc_new.cidr_block
    description = "Only CIDR Value from VPC"
}

output "vpc_id" {
    value = aws_vpc.vpc_new.id
    description = "Only CIDR Value from VPC"
}


output aws_internet_gateway_id{
    value = aws_internet_gateway.aws_internet_gateway.id
}