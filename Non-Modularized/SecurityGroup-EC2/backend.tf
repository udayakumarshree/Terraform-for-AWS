terraform {
  backend "s3" {
    bucket         = "udaysec-report-ssm"
    region         = "ap-south-1"
    key            = "Non-Modularized/SecurityGroup-EC2/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}
