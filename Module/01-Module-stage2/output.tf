# Attribute Reference
output "ec2_publicip" {
  description = "EC2 Instance Public IP"
  value = module.ec2_instance.instance_publicip
}

output "ec2_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value = module.ec2_instance.instance_publicdns
}
