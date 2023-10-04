variable "ec2_type" {
  description = "EC2 Instance Type - Instance Sizing"
  type = string
}

variable "ec2_name" {
  description = "EC2 Instance Tags"
  type = string
}

variable "ec2_environment" {
  description = "EC2 Instance Tags"
  type = string
}

variable "ec2_count" {
  description = "EC2 Instance count"
  type = number
}