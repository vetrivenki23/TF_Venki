variable "instance_type" {
  description = "EC2 Instance Type - Instance Sizing"
  type = string
}

variable "instance_name" {
  description = "EC2 Instance Tags"
  type = string
}

variable "instance_environment" {
  description = "EC2 Instance Tags"
  type = string
}

variable "instance_count" {
  description = "EC2 Instance count"
  type = string
}

variable "instance_ami_id" {
  description = "EC2 AMI ID"
  type = string
}