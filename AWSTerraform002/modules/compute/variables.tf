variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the network interface will be created"
}

variable "network_interface_private_ip" {
  type        = string
  description = "Private IP to assign to the network interface"
}

variable "security_group_id" {
  type        = string
  description = "The ID of the security group to attach to the network interface"
}

variable "elastic_ip_domain" {
  type        = string
  description = "The domain for the Elastic IP allocation"
}

variable "web_server_instance_ami" {
  type        = string
  description = "AMI ID for the web server instance"
}

variable "web_server_instance_type" {
  type        = string
  description = "Instance type for the web server"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the web server instance"
}

variable "instance_key_name" {
  type        = string
  description = "Key pair name for the instance"
}

variable "instance_name" {
  type        = string
  description = "Name of the EC2 instance"
}

variable "internet_gateway_id" {
  type        = string
  description = "The ID of the Internet Gateway to be used in dependencies"
}
