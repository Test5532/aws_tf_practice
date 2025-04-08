
variable public_subnet_01_connectivity_type{
    type = string
    description = "public_subnet_01_connectivity_type"
    validation{
        condition = (
            contains(["public","private"], var.public_subnet_01_connectivity_type)
        )
        error_message = "Only public or private Value is allowed"
    }

}

variable public_subnet_01_id{
    type = string
}





variable public_subnet_02_connectivity_type{
        type = string
    description = "public_subnet_02_connectivity_type"
    validation{
        condition = (
            contains(["public","private"], var.public_subnet_02_connectivity_type)
        )
        error_message = "Only public or private Value is allowed"
    }

}

variable public_subnet_02_id{
    type = string
}