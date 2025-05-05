provider "aws" {
    region = var.my_region
}

module "ec2_module" {
    source = "./modules/ec2_mod"
    my_ami = var.p1_ami
    my_instance_type = var.p1_insta_tyoe
}

module "s3_module" {
    source = "./modules/s3_mod"
    my_buc_name = var.p1_buc_name
}
