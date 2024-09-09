variable "vpc-cidr-block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc-name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet-cidr-block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability-zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "subnet-name" {
  description = "Name of the Subnet"
  type        = string
}

variable "route-table-name" {
    description = "Name of the Route Table"
    type        = string
}

variable "network-interface-private-ip" {
  description = "Private IP of the Network Interface"
  type = string
}

variable "elatic-ip-domain" {
  description = "Domain of the Elastic IP"
  type = string
}

variable "security-group-name" {
  description = "Security Group Name"
  type = string
}

variable "security-group-description" {
  description = "Security Group Description"
  type = string
}

variable "web-server-instance-ami" {
  description = "AMI for the Web Server"
  type = string
}

variable "web-server-instance-type" {
  description = "Web Server instance type"
  type = string
}

variable "instance-key-name" {
  description = "Key Pair Name for The Instance"
  type = string
}

variable "instance-name" {
  description = "Web Server instance name"
  type = string
}

variable "lambda-role-name" {
  description = "Lambda role name"
  type = string
}

variable "iam-policy-lambda-role-name" {
  description = "IAM Policy name for Lambda role"
  type = string
}

