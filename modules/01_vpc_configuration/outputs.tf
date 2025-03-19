output "vpc_cidr_block_range" {
    value = aws_vpc.vpc_new.cidr_block
    description = "Only CIDR Value from VPC"
}

output "vpc_all_param" {
    value = aws_vpc.vpc_new
    description = "All Values from VPC"
}