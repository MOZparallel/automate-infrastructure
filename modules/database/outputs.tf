# modules/database/outputs.tf

output "rds_endpoint" {
  description = "The endpoint of the primary RDS instance"
  value       = aws_db_instance.main.endpoint
}

output "rds_id" {
  description = "The ID of the primary RDS instance"
  value       = aws_db_instance.main.id
}
