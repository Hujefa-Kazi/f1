module "myvpc" {
source = "./modules/vpc"
region = var.region
vpc-cidr = var.vpc-cidr
pub-sub-cidr = var.pub-sub-cidr
pvt-sub-cidr = var.pvt-sub-cidr
az1 = var.az1
az2 = var.az2
route-cidr = var.route-cidr
}

module "myinstance" {
    source = "./modules/instance"
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    my-security = var.my-security
    instance-name1 = var.instance-name
}
