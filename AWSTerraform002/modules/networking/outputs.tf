output "vpc_id" {
  value       = aws_vpc.vpc.id
}

output "subnet_id" {
  value       = aws_subnet.subnet.id
}

output "route_table_id" {
  value       = aws_route_table.route-table.id
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.gw.id
  description = "The ID of the Internet Gateway created in the networking module"
}
