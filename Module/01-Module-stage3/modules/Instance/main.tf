# Create EC2 Instance - Amazon2 Linux
resource "aws_instance" "my-ec2-vm" {
    count =  var.instance_count

    ami           = var.instance_ami_id
    instance_type = var.instance_type
    key_name      = "tech_key_east2"
       
    user_data = file("${path.module}/apache-install.sh")  
    vpc_security_group_ids = [module.ec2_sg.sg_web_id , module.ec2_sg.sg_ssh_id]
    
    tags = {
      Name = "${var.instance_name}-${terraform.workspace}-${count.index}"
      environment = var.instance_environment
    }

    connection {
      type = "ssh"
      host = self.public_ip # Understand what is "self"
      user = "ec2-user"
      password = ""
      private_key = file("${path.module}/private-key/tech_key_east2.pem")
    }  

    provisioner "file" {
          source      = "${path.module}/webpage" 
      destination = "/tmp"
    }
   
   provisioner "remote-exec" {
    inline = [
      "sleep 120",  
      "sudo cp -r /tmp/webpage/* /var/www/html"
    ]
  }
}


module "ec2_sg" {
  source = "./SG"
}





