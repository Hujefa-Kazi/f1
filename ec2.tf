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
resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.my-security]
  tags = {
    Name = var.instance-name
    Env  = "dev"
  }
}
resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = local.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = data.aws_security_group.my-security.id
  tags = {
    Name = local.Name
    Env  = "dev" 
  }
  }