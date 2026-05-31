terraform {
  backend "s3" {
    bucket = "batch-786"
    region = "us-east-1"
    key = "tfstate"
  }
}
provider "aws" {
    region = var.region
}