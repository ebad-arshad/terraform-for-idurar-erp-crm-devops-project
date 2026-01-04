terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "idurar-tfstate" # Your bucket name
    key            = "dev/terraform.tfstate"       # Path inside the bucket
    region         = "ap-south-1"                  # Your region
    dynamodb_table = "terraform-lock"              # Your DynamoDB table
    encrypt        = true                          # Encrypt state at rest
  }
}

provider "aws" {
  region = "ap-south-1"
}