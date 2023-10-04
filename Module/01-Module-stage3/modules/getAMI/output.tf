output "ami_id" {
  description = "Get AMI ID"
  value = data.aws_ami.amzlinux.id 
}
