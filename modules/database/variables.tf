
#string input that holds the name of your project
variable "project_name" {
  description = "Name of the project"
  type        = string
}

#string input representing the ID of your VPC where resources will be created
variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

#list of subnet IDs where your database can be launched
variable "database_subnet_ids" {
  description = "Database subnet IDs"
  type        = list(string)
}

#ID of the security group that controls access to the database
variable "database_security_group_id" {
  description = "Database security group ID"
  type        = string
}

#Specifies the size and type of your RDS instance
variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
}

#name of the actual database that will be created inside RDS
variable "db_name" {
  description = "Database name"
  type        = string
}

#username for your database
variable "db_username" {
  description = "Database username"
  type        = string
}

#password for your database
variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}
