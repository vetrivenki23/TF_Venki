output "sg_web_id" {
  description = "Public DNS URL of an EC2 Instance"
  value = aws_security_group.vpc-web.id
}

output "sg_ssh_id" {
  description = "Public DNS URL of an EC2 Instance"
  value = aws_security_group.vpc-ssh.id
}
