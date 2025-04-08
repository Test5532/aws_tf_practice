resource "aws_subnet" "public01" {
    vpc_id = var.vpc_id
    cidr_block = var.public_subnet_01_cidr_block
    availability_zone = var.availability_zone_public_subnet_01
    enable_resource_name_dns_a_record_on_launch = var.enable_resource_name_dns_a_record_on_launch_public_subnet_01
    map_public_ip_on_launch = var.map_public_ip_on_launch_public_subnet_01
    private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch_public_subnet_01

    tags = {
        Name = "public_subnet_01"
        Use = "internet expose subnet 01"
    }

}


resource "aws_subnet" "public02" {
    vpc_id = var.vpc_id
    cidr_block = var.public_subnet_02_cidr_block
    availability_zone = var.availability_zone_public_subnet_02
    enable_resource_name_dns_a_record_on_launch = var.enable_resource_name_dns_a_record_on_launch_public_subnet_02
    map_public_ip_on_launch = var.map_public_ip_on_launch_public_subnet_02
    private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch_public_subnet_02



    tags = {
        Name = "Public_Subnet_02"
        Use = "Internet Expose subnet 02"
    }

}

