############## Subnet 01 private ##############
resource "aws_subnet" "private01" {
    vpc_id = var.vpc_id
    cidr_block = var.private_subnet_01_cidr_block
    availability_zone = var.availability_zone_private_subnet_01
    enable_resource_name_dns_a_record_on_launch = var.enable_resource_name_dns_a_record_on_launch_private_subnet_01
    map_public_ip_on_launch = var.map_public_ip_on_launch_private_subnet_01
    private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch_private_subnet_01
    tags = {
        Name = "private_subnet_01"
    }

}

##############################################################################
############## Subnet 02 private ##############

resource "aws_subnet" "private02" {
    vpc_id = var.vpc_id
    cidr_block = var.private_subnet_02_cidr_block
    availability_zone = var.availability_zone_private_subnet_02
    enable_resource_name_dns_a_record_on_launch = var.enable_resource_name_dns_a_record_on_launch_private_subnet_02
    map_public_ip_on_launch = var.map_public_ip_on_launch_private_subnet_02
    private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch_private_subnet_02
    tags = {
        Name = "private_subnet_02"
    }

}




