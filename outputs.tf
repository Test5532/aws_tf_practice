output "vpc_cidr_block_range" {
    value = module.vpc_creation.vpc_cidr_block_range
    description = "Only CIDR Value from VPC"
    sensitive = true
}

output aws_internet_gateway_id {
    value = module.vpc_creation.aws_internet_gateway_id
    description = "Internet gateway id" 
}

output "public_subnet_01_id" {
    value = module.public_subnet_creation.public_subnet_01_id
    description = "public subnet 01 id" 
}

output "public_subnet_01_cidr" {
    value = module.public_subnet_creation.public_subnet_01_cidr
    description = "public subnet 01 cidr"  
}


output "public_subnet_02_id" {
    value = module.public_subnet_creation.public_subnet_02_id
    description = "public subnet 02 id" 
}

output "public_subnet_02_cidr" {
    value = module.public_subnet_creation.public_subnet_02_cidr
    description = "public subnet 02 cidr"  
}



output "private_subnet_01_id" {
    value = module.private_subnet_creation.private_subnet_01_id
    description = "public subnet 01 id" 
}

output "private_subnet_01_cidr" {
    value = module.private_subnet_creation.private_subnet_01_cidr
    description = "public subnet 01 cidr"  
}


output "private_subnet_02_id" {
    value = module.private_subnet_creation.private_subnet_02_id
    description = "private subnet 02 id" 
}

output "private_subnet_02_cidr" {
    value = module.private_subnet_creation.private_subnet_02_cidr
    description = "private subnet 02 cidr"  
}


output aws_nat_gateway_public_01_id{
    value = module.nat_gateway.aws_nat_gateway_public_01_id
}


output aws_nat_gateway_public_02_id{
    value = module.nat_gateway.aws_nat_gateway_public_02_id
}
