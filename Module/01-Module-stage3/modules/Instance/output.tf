# Define Output Values

# Attribute Reference
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.my-ec2-vm.*.public_ip
}


# Attribute Reference - Create Public DNS URL
output "instance_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value = aws_instance.my-ec2-vm.*.public_dns
}


output "instance_sg_web_id" {
  description = "Public DNS URL of an EC2 Instance"
  value = module.ec2_sg.sg_web_id
}
