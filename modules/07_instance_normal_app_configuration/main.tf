data "aws_ami" "amazon_linux_2023" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.6.20250303.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"]

}


# Security Groupcheck

resource "aws_security_group" "allow_traffic" {
  name        = "allow_traffic all"
  description = "all allow_traffic inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "allow_traffic all"
  }
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_outbound" {
  security_group_id = aws_security_group.allow_traffic.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_ingress_rule" "allow_all_traffic_inbound" {
  security_group_id = aws_security_group.allow_traffic.id
  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}

# Public Bastion Host

resource "aws_instance" "bastion"{
    ami = data.aws_ami.amazon_linux_2023.id
   
    instance_type = var.bastion_instance_type
    associate_public_ip_address = var.associate_public_ip_address_bastion
    availability_zone = var.availability_zone_bastion
    key_name = var.key_pair_name_bastion
    subnet_id = var.subnet_id_bastion
    vpc_security_group_ids = [ aws_security_group.allow_traffic.id ] 

    tags = {
        Name = "Bastion Host"
    }
}

# Private Instance

resource "aws_instance" "private_host_01"{
    ami = data.aws_ami.amazon_linux_2023.id
   
    instance_type = var.bastion_instance_type
    associate_public_ip_address = "false"
    availability_zone = var.availability_zone_bastion
    key_name = var.key_pair_name_bastion
    subnet_id = var.subnet_id_private
    vpc_security_group_ids = [ aws_security_group.allow_traffic.id ] 

    tags = {
        Name = "private_01 Host"
    }
}
