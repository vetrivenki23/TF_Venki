# Attribute Reference
output "ec2_publicip" {
  description = "EC2 Instance Public IP"
  value = module.ec2_instance.instance_publicip
}

output "ec2_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value = module.ec2_instance.instance_publicdns
}


output "ec2_sg_web_id" {
  description = "Public DNS URL of an EC2 Instance"
  value = module.ec2_instance.instance_sg_web_id
}

output "ec2_ami_id" {
  description = "Public DNS URL of an EC2 Instance"
  value = module.ec2_ami.ami_id
}
