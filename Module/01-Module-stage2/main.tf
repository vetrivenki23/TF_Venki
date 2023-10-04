
module "ec2_instance" {
  source = "./modules/Instance"  
  
  instance_type = var.ec2_type
  instance_count = var.ec2_count
  instance_name = var.ec2_name
  instance_environment = var.ec2_environment
}