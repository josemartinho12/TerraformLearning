module "networking" {
  source            = "../modules/networking"
  vpc_cidr_block    = var.vpc_cidr_block
  vpc_name          = var.vpc_name
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  subnet_name       = var.subnet_name
  route_table_name  = var.route_table_name
}

module "security" {
  source                    = "../modules/security"
  vpc_id                    = module.networking.vpc_id
  security_group_name       = var.security_group_name
  security_group_description = var.security_group_description
}

module "compute" {
  source                        = "../modules/compute"
  subnet_id                     = module.networking.subnet_id
  security_group_id             = module.security.security_group_id
  network_interface_private_ip  = var.network_interface_private_ip
  elastic_ip_domain             = var.elastic_ip_domain
  web_server_instance_ami       = var.web_server_instance_ami
  web_server_instance_type      = var.web_server_instance_type
  availability_zone             = var.availability_zone
  instance_key_name             = var.instance_key_name
  instance_name                 = var.instance_name
  internet_gateway_id           = module.networking.internet_gateway_id
}

module "storage" {
  source                    = "../modules/storage"
  bucket                    = var.bucket
  bucket-tag-name           = var.bucket-tag-name
  bucket-tag-environment    = var.bucket-tag-environment
  bucket-versioning-status  = var.bucket-versioning-status
}

module "logs" {
  source           = "../modules/logs"
  s3-bucket-id     = module.storage.s3-bucket-id
  s3-bucket-policy-id = module.storage.s3-bucket-policy-id
  cloudtrail-name  = var.cloudtrail-name
}

