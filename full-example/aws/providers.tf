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
    bucket         = "demo-2025-07-23-bucket"
    key            = "full-demo/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "full_demo_tf_lockid"
  }
}
