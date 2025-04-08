variable bastion_instance_type{
    description = "Provide Instance type"
    type = string
}

variable associate_public_ip_address_bastion{
    description = "Associate public ip to instance"
    type = string

}

variable availability_zone_bastion{
    description = "Provide AZ for instance"
    type = string

}

variable key_pair_name_bastion{
    description = "Provide key pair name for instance"
    type = string

}

variable subnet_id_bastion{
    description = "provide bastion for subnet"
    type = string
}



variable vpc_id{
    description = "provide bastion for subnet"
    type = string
}






variable subnet_id_private{
    description = "provide bastion for subnet"
    type = string
}