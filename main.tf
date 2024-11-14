terraform {
  required_version = ">=1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "bucket-remote-state-estudos"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}

# Configure AWS Provider
provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = var.tag_owner
      managed-by = "terraform"
    }
  }
}

module "rds" {
  depends_on = [module.secrets]

  source              = "./modules/rds"
  password_secret_arn = module.secrets[0].secret_rds_psw_arn_output
  custom_password     = var.custom_db_password
}

module "secrets" {
  count  = var.use_custom_db_password ? 1 : 0
  source = "./modules/secrets"
}