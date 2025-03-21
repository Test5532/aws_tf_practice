output "vpc_cidr_block_range" {
    value = module.vpc_creation.vpc_cidr_block_range
    description = "Only CIDR Value from VPC"
    sensitive = true
}

output "vpc_all_param" {
    value = module.vpc_creation.vpc_all_param
    description = "All Values from VPC"
    sensitive = false
}