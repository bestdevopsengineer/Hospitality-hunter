terraform {
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "data_platform_bucket" {
  bucket = "hospitality-hunter-data-platform-demo"

  tags = {
    Environment = "dev"
    Project     = "hospitality-hunter"
  }
}