variable vpc_cidr_block{
    description = "The CIDR block for the VPC"
    type        = string

    validation {
        condition     = can(cidrsubnet(var.vpc_cidr_block, 0, 0))
        error_message = "The provided value must be a valid CIDR block."
    }

    validation {
        condition = (
            startswith(var.vpc_cidr_block, "10.") ||
            startswith(var.vpc_cidr_block, "172.16.") ||
            startswith(var.vpc_cidr_block, "192.168.")
        )
        error_message = "VPC CIDR must be within private IP ranges (10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16)."
    }

  default = "10.0.0.0/16"
}


variable vpc_instance_tenancy{
    description = "Tenancy of instances spin up within VPC Default/Dedicated"
    type        = string

    validation{
        condition = (
            contains(["default"], var.vpc_instance_tenancy)
        )
        error_message = "Only Default Tenancy Allowed No Dedicated tenancy allowed"
    }

    default = "default"
}


variable vpc_enable_dns_support{
    description = "Enable DNS Support"
    type        = string

    validation{
        condition = (
            contains(["true","false"], var.vpc_enable_dns_support)
        )
        error_message = "Only true or false Value allowed"
    }

    default = "true"
}


variable vpc_enable_network_address_usage_metrics{
    description = "Enable Network address usage Metrics"
    type        = string

    validation{
        condition = (
            contains(["true","false"], var.vpc_enable_network_address_usage_metrics)
        )
        error_message = "Only true or false Value allowed"
    }

    default = "true"
}


variable vpc_enable_dns_hostnames{
    description = "Enable DNS Support"
    type        = string

    validation{
        condition = (
            contains(["true","false"], var.vpc_enable_dns_hostnames)
        )
        error_message = "Only true or false Value allowed"
    }

    default = "true"
}



variable vpc_name_tag{
    description = "VPC Name Tag"
    type        = string
    default = "TEST_VPC"

}


variable vpc_env_tag{
    description = "VPC Environment Tag"
    type        = string

    validation{
        condition = (
            contains(["DEV","PROD","STAGING"], var.vpc_env_tag)
        )
        error_message = "Only DEV , PROD and STAGING Value allowed"
    }

    default = "DEV"

}
