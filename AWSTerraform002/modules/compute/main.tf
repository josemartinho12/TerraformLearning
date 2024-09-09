#7 - Create a network interface with an ip in the subnet that was creted in step 4
resource "aws_network_interface" "web_server_nic" {
  subnet_id       = var.subnet_id
  private_ips     = [var.network_interface_private_ip]
  security_groups = [var.security_group_id]
}

#8 - Assign an elastic ip to the network interface created in step 7
resource "aws_eip" "web_server_eip" {
  domain                    = var.elastic_ip_domain
  network_interface         = aws_network_interface.web_server_nic.id
  associate_with_private_ip = var.network_interface_private_ip
   depends_on                = [var.internet_gateway_id]
}

#9 - Create an Ubuntu Server and install or enable apache2 
resource "aws_instance" "web_server_instance" {
  ami               = var.web_server_instance_ami
  instance_type     = var.web_server_instance_type
  availability_zone = var.availability_zone
  key_name          = var.instance_key_name

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.web_server_nic.id
  }

  user_data = <<-EOF
              #!/bin/bash
                yum install -y httpd
                systemctl start httpd
                systemctl enable httpd
                EOF

  tags = {
    Name = var.instance_name
  }
}
