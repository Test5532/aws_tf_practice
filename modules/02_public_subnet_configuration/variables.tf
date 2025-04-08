variable vpc_id{
    type = string
    description = "The VPC ID to provide for subnet"
}

variable availability_zone_public_subnet_01{
    type = string
    description = "The availability zone to provide for subnet"
}


variable public_subnet_01_cidr_block{
    type = string
    description = "The public_subnet_01_cidr_block to provide for subnet"
    
}

variable enable_resource_name_dns_a_record_on_launch_public_subnet_01{
    type = string
    description = "The enable_resource_name_dns_a_record_on_launch_public_subnet_01 to provide for subnet"
}

variable map_public_ip_on_launch_public_subnet_01{
    type = string
    description = "The map_public_ip_on_launch_public_subnet_01 to provide for subnet"
}

variable private_dns_hostname_type_on_launch_public_subnet_01{
    type = string
    description = "The private_dns_hostname_type_on_launch_public_subnet_01 to provide for subnet"

    validation{
        condition = (
            contains(["ip-name", "resource-name"], var.private_dns_hostname_type_on_launch_public_subnet_01)
            )
        error_message = "ip-name or resource-name allowed"
        }
}


################################################################################################
################################################################################################


variable availability_zone_public_subnet_02{
    type = string
    description = "The availability zone to provide for subnet"
}


variable public_subnet_02_cidr_block{
    type = string
    description = "The public_subnet_02_cidr_block to provide for subnet"
    
}

variable enable_resource_name_dns_a_record_on_launch_public_subnet_02{
    type = string
    description = "The enable_resource_name_dns_a_record_on_launch_public_subnet_02 to provide for subnet"
}

variable map_public_ip_on_launch_public_subnet_02{
    type = string
    description = "The map_public_ip_on_launch_public_subnet_02 to provide for subnet"
}

variable private_dns_hostname_type_on_launch_public_subnet_02{
    type = string
    description = "The private_dns_hostname_type_on_launch_public_subnet_02 to provide for subnet"

    validation{
        condition = (
            contains(["ip-name", "resource-name"], var.private_dns_hostname_type_on_launch_public_subnet_02)
            )
        error_message = "ip-name or resource-name allowed"
        }

}