# Root Module - main.tf

module "root_mod_ec2" {
  source = "./modules/ec2"

  c1_var_ami = var.root_var_ami
}