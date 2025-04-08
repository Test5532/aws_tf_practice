# Public Subnet 01 Output

output "public_subnet_01_id" {
    value = aws_subnet.public01.id
    description = "public subnet 01 id"  
}

output "public_subnet_01_cidr" {
    value = aws_subnet.public01.cidr_block
    description = "public subnet 01 cidr"  
}


# Public Subnet 02 Output

output "public_subnet_02_id" {
    value = aws_subnet.public02.id
    description = "public subnet 02 id" 
}


output "public_subnet_02_cidr" {
    value = aws_subnet.public02.cidr_block
    description = "public subnet 02 cidr"  
}