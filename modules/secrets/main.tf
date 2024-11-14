# Exportar e armazenar em um secret criado
resource "random_string" "util-db-password" {
  length           = 16
  upper            = true
  lower            = true
  special          = true
  override_special = "!@#$%&*-_=+"
}

resource "aws_secretsmanager_secret" "SAACO3_rds_postgres_password" {
  name = "SAACO3-rds-postgres-password"
}

resource "aws_secretsmanager_secret_version" "my_secret_version" {
  secret_id     = aws_secretsmanager_secret.SAACO3_rds_postgres_password.id
  secret_string = random_string.util-db-password.result
}