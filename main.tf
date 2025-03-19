module vpc_creation{
    source =    "./modules/01_vpc_configuration"
    vpc_cidr_block = "10.2.0.0/16"
    vpc_instance_tenancy = "default"
    vpc_enable_dns_support  = false
    vpc_enable_network_address_usage_metrics = true
    vpc_enable_dns_hostnames = true
    vpc_name_tag = "PROD_VPC"
    vpc_env_tag = "PROD"
}