output "network_interface_id" {
  value       = aws_network_interface.web_server_nic.id
  description = "The ID of the network interface"
}

output "elastic_ip_id" {
  value       = aws_eip.web_server_eip.id
  description = "The ID of the Elastic IP"
}

output "instance_id" {
  value       = aws_instance.web_server_instance.id
  description = "The ID of the EC2 instance"
}
