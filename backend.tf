provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = "~> 1.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0"
    }
  }

  backend "s3" {
    key = "terraform/backend/scp.tfstate"
    bucket = "terraform-state-bucket-dops*"
    encrypt = true
  }
}
