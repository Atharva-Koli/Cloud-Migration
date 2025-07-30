resource "aws_db_subnet_group" "rds" {
  name       = "db-subnet-group"
  subnet_ids = aws_subnet.db[*].id
}

resource "aws_db_instance" "mysql" {
  identifier         = "cloud-migration-db"
  engine             = "mysql"
  engine_version     = "8.0"
  instance_class     = "db.t3.micro"
  name               = var.db_name
  username           = var.db_username
  password           = var.db_password
  db_subnet_group_name = aws_db_subnet_group.rds.name
  allocated_storage  = 20
  publicly_accessible = false
  multi_az           = true
  skip_final_snapshot = true
  tags               = { Name = "MySQL-RDS" }
}
