output "secret_rds_psw_arn_output" {
  value = aws_secretsmanager_secret.SAACO3_rds_postgres_password.arn
}