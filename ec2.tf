terraform {
  backend "s3" {
    bucket = "batch-786"
    region = "us-east-1"
  }
}
provider "aws" {
  region = var.region
}
resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.my-security
  tags = {
    Name = var.instance-name
    Env  = "dev"
  }
}
