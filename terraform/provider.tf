terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
  region = "ap-south-1"
  bucket = "statefiles-terraform-github"
  key    = "test.tfstate"
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
