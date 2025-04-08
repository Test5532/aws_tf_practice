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

module public_subnet_creation{
    source =    "./modules/02_public_subnet_configuration"

    # Public Subnet 01 Configuration
    vpc_id = module.vpc_creation.vpc_id
    availability_zone_public_subnet_01 = "us-east-1a"
    public_subnet_01_cidr_block = "10.2.0.0/20"
    enable_resource_name_dns_a_record_on_launch_public_subnet_01 = "true"
    map_public_ip_on_launch_public_subnet_01 = "true"
    private_dns_hostname_type_on_launch_public_subnet_01 = "resource-name"

    # Public Subnet 02 Configuration
    availability_zone_public_subnet_02 = "us-east-1b"
    public_subnet_02_cidr_block = "10.2.16.0/20"
    enable_resource_name_dns_a_record_on_launch_public_subnet_02 = "true"
    map_public_ip_on_launch_public_subnet_02 = "true"
    private_dns_hostname_type_on_launch_public_subnet_02 = "resource-name"

}


module public_rtb_creation{
    source =    "./modules/03_public_route_configuration"

   
    vpc_id = module.vpc_creation.vpc_id
    igw_id = module.vpc_creation.aws_internet_gateway_id

 # Public Subnet 01 Configuration
    internet_route_cidr_block_rtb1 = "0.0.0.0/0"
    public_subnet_01_id = module.public_subnet_creation.public_subnet_01_id

 # Public Subnet 02 Configuration    
    internet_route_cidr_block_rtb2 = "0.0.0.0/0"
    public_subnet_02_id = module.public_subnet_creation.public_subnet_02_id
}



module private_subnet_creation{
    source =    "./modules/04_private_subnet_configuration"

    vpc_id = module.vpc_creation.vpc_id

    # Private Subnet 01 Configuration
    
    availability_zone_private_subnet_01 = "us-east-1a"
    private_subnet_01_cidr_block = "10.2.128.0/20"

    enable_resource_name_dns_a_record_on_launch_private_subnet_01 = "true"
    map_public_ip_on_launch_private_subnet_01 = "false"
    private_dns_hostname_type_on_launch_private_subnet_01 = "resource-name"

    # Private Subnet 02 Configuration

    availability_zone_private_subnet_02 = "us-east-1b"
    private_subnet_02_cidr_block = "10.2.144.0/20"
    
    enable_resource_name_dns_a_record_on_launch_private_subnet_02 = "true"
    map_public_ip_on_launch_private_subnet_02 = "true"
    private_dns_hostname_type_on_launch_private_subnet_02 = "resource-name"
}

module nat_gateway{
    source = "./modules/01.1_nat_gateway_configuration"

    public_subnet_01_connectivity_type = "public"
    public_subnet_01_id = module.public_subnet_creation.public_subnet_01_id

    public_subnet_02_connectivity_type = "public"
    public_subnet_02_id = module.public_subnet_creation.public_subnet_02_id
}

module private_rtb_creation{
    source =    "./modules/05_private_route_configuration"   
    vpc_id = module.vpc_creation.vpc_id

 # Public Subnet 01 Configuration
    private_subnet_01_id = module.private_subnet_creation.private_subnet_01_id
    gateway_id_public_01 = module.nat_gateway.aws_nat_gateway_public_01_id
 # Public Subnet 02 Configuration    
    private_subnet_02_id = module.private_subnet_creation.private_subnet_02_id
    gateway_id_public_02 = module.nat_gateway.aws_nat_gateway_public_02_id
}


module ec2_instance_creation{
    source =    "./modules/07_instance_normal_app_configuration"
    bastion_instance_type = "t2.micro"
    associate_public_ip_address_bastion = "true"
    availability_zone_bastion = "us-east-1a"
    key_pair_name_bastion = "devkey"
    subnet_id_bastion = module.public_subnet_creation.public_subnet_01_id
    vpc_id = module.vpc_creation.vpc_id   

    subnet_id_private = module.private_subnet_creation.private_subnet_01_id
}


