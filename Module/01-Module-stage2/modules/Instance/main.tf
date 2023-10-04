# Create EC2 Instance - Amazon2 Linux
resource "aws_instance" "my-ec2-vm" {
    count =  var.instance_count

    ami           = data.aws_ami.amzlinux.id 
    instance_type = var.instance_type
    key_name      = "tech_key_east2"
       
    user_data = file("${path.module}/apache-install.sh")  
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
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







