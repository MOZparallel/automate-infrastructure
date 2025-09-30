# modules/database/outputs.tf

output "rds_endpoint" {
  description = "The endpoint of the primary RDS instance"
  value       = aws_db_instance.main.endpoint
}

output "rds_id" {
  description = "The ID of the primary RDS instance"
  value       = aws_db_instance.main.id
}

#output "replica_endpoint" {
 # description = "The endpoint of the read replica"
 # value       = aws_db_instance.replica.endpoint
#}

