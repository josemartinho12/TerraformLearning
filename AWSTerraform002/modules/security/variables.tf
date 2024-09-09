variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where the security group will be created"
}

variable "security_group_name" {
  type        = string
  description = "The name of the security group"
}

variable "security_group_description" {
  type        = string
  description = "The description of the security group"
}
