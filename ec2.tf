terraform {
  backend "s3" {
    bucket = "batch-786"
    region = "us-east-1" 
    key = "tfstate"
  }
}
provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami                    = "ami-091138d0f0d41ff90"
  instance_type          = "t3.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-097f80ca2a87eb65f"]
  tags = {
    Name = "myec2"
    name = "huzef"
    Env  = "dev"
  }
}
