provider "aws" {
  region = local.region
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53"
    }
  }
}

# Configuring the lock of remote backend for .tfstate file, requires deployed s3 bucket and DynamoDB table:

# terraform {
#   required_version = ">= 1.0"

#   backend "s3" {
#     bucket         = "terraform-state-eks-dev"
#     key            = "dev/eks/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "dynamodb-terraform-state-lock-dev"
#     encrypt        = true
#   }
# }