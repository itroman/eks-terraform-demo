provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.65.0"
    }
  }

	backend "s3" {
    bucket         = var.bucket
    key            = var.key
    region         = var.region
    encrypt        = true
    dynamodb_table = var.dynamodb_table
  }
}