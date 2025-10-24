# DB Subnet Group(group of subnets where my database can run)
resource "aws_db_subnet_group" "main" {
  name       = "${var.project_name}-db-subnet-group"
  subnet_ids = var.database_subnet_ids
]
  tags = {
    Name = "${var.project_name}-db-subnet-group"
  }
}

# RDS Parameter Group
resource "aws_db_parameter_group" "main" {
  family = "mysql8.0"
  name   = "${var.project_name}-db-params"

  parameter {
    name         = "innodb_buffer_pool_size"
    value        = "{DBInstanceClassMemory*3/4}"
    apply_method = "immediate"
  }

  tags = {
    Name = "${var.project_name}-db-params"
  }
}

# Primary RDS Instance
resource "aws_db_instance" "main" {
  identifier            = "${var.project_name}-primary-db"
  allocated_storage     = 20
  max_allocated_storage = 100
  storage_type          = "gp2"
  storage_encrypted     = true

  engine         = "mysql"
  engine_version = "8.0"
  instance_class = var.db_instance_class

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  vpc_security_group_ids = [var.database_security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.main.name
  parameter_group_name   = aws_db_parameter_group.main.name

  backup_retention_period = 7
  backup_window           = "03:00-04:00"
  maintenance_window      = "sun:04:00-sun:05:00"

  skip_final_snapshot = true
  deletion_protection = false

  tags = {
    Name = "${var.project_name}-primary-db"
  }
}

# ==========================
# Wait for Primary RDS to be available
# ==========================
resource "null_resource" "wait_primary_db" {
  depends_on = [aws_db_instance.main]

  provisioner "local-exec" {
    command = <<EOT
      echo "Waiting 5 minutes for primary RDS to become available..."
      sleep 300
    EOT
  }
}
