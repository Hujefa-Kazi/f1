variable "region" {
    default = "us-east-1"
    description = "this is my home region"
}
variable "mybucket" {
    default = "batch-786"
}
variable "ami" {
    default = "ami-091138d0f0d41ff90"
}
variable "instance_type" {
   default = "t3.micro"
}
variable "key_name" {
    default = "terraform-key"
}
variable "my-security" {
    default = "sg-097f80ca2a87eb65f"
}
variable "instance-name1" {
    default = "myec2"
}
variable "instance-name2" {
    default = "myinstance"
}
