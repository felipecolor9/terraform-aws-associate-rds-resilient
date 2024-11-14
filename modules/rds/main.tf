data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "SAACO3_sg_postgres" {
  vpc_id      = data.aws_vpc.default.id
  name        = "SAACO3-sg-postgres"
  description = "Allow all inbound for Postgres"
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "SAACO3_rds_postgre" {
  identifier             = "saaco3-rds-postgre"
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "12.5"
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = aws_security_group.SAACO3_sg_postgres
  username               = "saaco3dbuser"
  password               = var.password_secret_arn == null ? var.custom_password : var.password_secret_arn
}