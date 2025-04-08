# Private Subnet 01 Output

output "private_subnet_01_id" {
    value = aws_subnet.private01.id
    description = "private subnet 01 id"  
}

output "private_subnet_01_cidr" {
    value = aws_subnet.private01.cidr_block
    description = "private subnet 01 cidr"  
}


# Private Subnet 02 Output

output "private_subnet_02_id" {
    value = aws_subnet.private02.id
    description = "private subnet 02 id" 
}


output "private_subnet_02_cidr" {
    value = aws_subnet.private02.cidr_block
    description = "private subnet 02 cidr"  
}