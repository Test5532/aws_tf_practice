resource "aws_vpc" "vpc_new" {

    cidr_block = var.vpc_cidr_block
    instance_tenancy = var.vpc_instance_tenancy
    enable_dns_support = var.vpc_enable_dns_support
    enable_network_address_usage_metrics = var.vpc_enable_network_address_usage_metrics
    enable_dns_hostnames = var.vpc_enable_dns_hostnames

    tags = {
        Name = var.vpc_name_tag
        Environment = var.vpc_env_tag
    }

}


resource "aws_internet_gateway" "aws_internet_gateway" {
    tags = {
        Name = "igw_new"
    }

}

resource "aws_internet_gateway_attachment" "igw_attach" {
  internet_gateway_id = aws_internet_gateway.aws_internet_gateway.id
  vpc_id = aws_vpc.vpc_new.id
  depends_on = [aws_internet_gateway.aws_internet_gateway , aws_vpc.vpc_new]
}

