variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "subnet_cidr_block" {
  type        = string
  description = "CIDR block for the subnet"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the subnet"
}

variable "subnet_name" {
  type        = string
  description = "Name of the Subnet"
}

variable "route_table_name" {
  type        = string
  description = "Name of the Route Table"
}

variable "security_group_name" {
  type        = string
  description = "The name of the security group"
}

variable "security_group_description" {
  type        = string
  description = "The description of the security group"
}

variable "network_interface_private_ip" {
  type        = string
  description = "Network interface IP"
}

variable "elastic_ip_domain" {
  type        = string
  description = "Elastic IP domain"
}

variable "web_server_instance_ami" {
  type = string
  description = "Web Server AMI"
}

variable "web_server_instance_type" {
  type = string
  description = "Web Server instance type"
}

variable "instance_key_name" {
  type = string
  description = "Intance Key name"
}

variable "instance_name" {
  type = string
  description = "Intance name"
}

variable "bucket" {
  type = string
  description = "Bucket unique name"
}

variable "bucket-tag-name" {
  type =string
  description = "Bucket name"
}

variable "bucket-tag-environment" {
  type =string
  description = "Bucket environment"
}

variable "bucket-versioning-status" {
  type = string
  description = "Bucket versioning status"
}

variable "cloudtrail-name" {
    type = string
    description = "Cloudtrail name"
}
