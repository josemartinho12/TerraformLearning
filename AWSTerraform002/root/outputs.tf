output "vpc_id" {
  value       = module.networking.vpc_id
  description = "The ID of the VPC created in the networking module"
}

output "subnet_id" {
  value       = module.networking.subnet_id
  description = "The ID of the subnet created in the networking module"
}

output "internet_gateway_id" {
  value       = module.networking.internet_gateway_id
  description = "The ID of the Internet Gateway created in the networking module"
}

output "route_table_id" {
  value       = module.networking.route_table_id
  description = "The ID of the Route Table created in the networking module"
}

output "security_group_id" {
  value       = module.security.security_group_id
  description = "The ID of the Security Group created in the security module"
}

output "network_interface_id" {
  value       = module.compute.network_interface_id
  description = "The ID of the network interface associated with the web server"
}

output "elastic_ip_id" {
  value       = module.compute.elastic_ip_id
  description = "The ID of the Elastic IP address assigned to the network interface of the web server"
}

output "web_server_instance_id" {
  value       = module.compute.instance_id
  description = "The instance ID of the AWS EC2 web server"
}
