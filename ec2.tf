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
    Name = var.instance.name1
    name = "huzef"
    Env  = "dev"
  }
}
data "aws_security_group" "my-security" {
  filter {
    name = "vpc-id"
    values = [var.vpc_id]
  }
    filter {
        name = "group-name"
        values = ["launch-wizard-1"]
    }
}

resource "aws_instance" "myinstance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = data.aws_security_group.my-security.id
  tags = {
    Name = var.instance-name2
    name = "huzef"
    Env  = "dev"
  }
}
