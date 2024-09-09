output "vpc_id" {
  value       = aws_vpc.prod-vpc.id
  description = "The ID of the VPC"
}

output "subnet_id" {
  value       = aws_subnet.subnet-1.id
  description = "The ID of the Subnet"
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.gw.id
  description = "The ID of the Internet Gateway"
}

output "route_table_id" {
  value       = aws_route_table.prod-route-table.id
  description = "The ID of the route table"
}

output "security-group-id" {
  value = aws_security_group.allow_web.id
  description = "Security Group ID"
}