terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.57.0"
    }
  }
  backend "s3" {
    key = "tfstate/lambda.tfstate"
  }
}

provider "aws" {
  region = var.region
}
