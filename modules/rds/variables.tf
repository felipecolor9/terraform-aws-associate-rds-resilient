variable "password_secret_arn" {
  description = "The ARN for a securely generated password"
  type        = string
  default     = null
}

variable "custom_password" {
  description = "A parameter for a custom database password."
  type        = string
}