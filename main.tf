terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# VPC Module
module "vpc" {
  source = "./modules/vpc"
  
  project_name        = var.project_name
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
}

# Security Module
module "security" {
  source = "./modules/security"
  
  project_name = var.project_name
  vpc_id      = module.vpc.vpc_id
  vpc_cidr    = var.vpc_cidr
}

# Compute Module
module "compute" {
  source = "./modules/compute"
  
  project_name           = var.project_name
  vpc_id                = module.vpc.vpc_id
  public_subnet_ids     = module.vpc.public_subnet_ids
  private_subnet_ids    = module.vpc.private_subnet_ids
  web_security_group_id = module.security.web_security_group_id
  app_security_group_id = module.security.app_security_group_id
  key_pair_name         = var.key_pair_name
  instance_type         = var.instance_type
}

# Database Module
module "database" {
  source = "./modules/database"
  
  project_name             = var.project_name
  vpc_id                  = module.vpc.vpc_id
  database_subnet_ids     = module.vpc.database_subnet_ids
  database_security_group_id = module.security.database_security_group_id
  db_instance_class       = var.db_instance_class
  db_name                = var.db_name
  db_username            = var.db_username
  db_password            = var.db_password
}
