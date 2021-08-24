
# Create an AWS EC2 Instance without any startup script

# resource "aws_instance" "Jenkins" {
#  # in case EC2 instance to be destroyed only , count=0
#  // count = 0
#   ami = var.ami
#   instance_type = var.instance_type
#   key_name = "connect-jerkins"
#   vpc_security_group_ids = [aws_security_group.MyLab_Sec_Group.id]
#   subnet_id = aws_subnet.MyLab-Subnet1.id
#   associate_public_ip_address = true
  
#   tags = {
#     Name = "Jenkins-Server"
#   }
# }


# Create an AWS EC2 Instance with any startup script

resource "aws_instance" "JenkinServer" {
 # in case EC2 instance to be destroyed only , count=0
  count = 1
  ami = var.ami
  instance_type = var.instance_type
  key_name = "connect-jerkins"
  vpc_security_group_ids = [aws_security_group.MyLab_Sec_Group.id]
  subnet_id = aws_subnet.MyLab-Subnet1.id
  associate_public_ip_address = true
  # include startup script
  user_data = file("./InstallJenkins.sh")

  tags = {
    Name = "Jenkins-Server"
  }
}

# Create Ansible - an AWS EC2 Instance with startup script

resource "aws_instance" "AnsibleServer" {
 # in case EC2 instance to be destroyed only , count=0
  count = 0
  ami = var.ami
  instance_type = var.instance_type
  key_name = "connect-jerkins"
  vpc_security_group_ids = [aws_security_group.MyLab_Sec_Group.id]
  subnet_id = aws_subnet.MyLab-Subnet1.id
  associate_public_ip_address = true
  # include startup script
  user_data = file("./InstallAnsible.sh")

  tags = {
    Name = "Ansible-Server"
  }
}

# Create Apache - an AWS EC2 Instance with startup script

resource "aws_instance" "ApacheServer" {
 # in case EC2 instance to be destroyed only , count=0
  count = 0
  ami = var.ami
  instance_type = var.instance_type
  key_name = "connect-jerkins"
  vpc_security_group_ids = [aws_security_group.MyLab_Sec_Group.id]
  subnet_id = aws_subnet.MyLab-Subnet1.id
  associate_public_ip_address = true
  # include startup script
  user_data = file("./AnsibleManagedNodeApache.sh")

  tags = {
    Name = "Apache-Server"
  }
}

# Create Apache - an AWS EC2 Instance with startup script

resource "aws_instance" "DockerServer" {
 # in case EC2 instance to be destroyed only , count=0
  count = 0
  ami = "ami-0443305dabd4be2bc"
  instance_type = var.instance_type
  key_name = "connect-jerkins"
  vpc_security_group_ids = [aws_security_group.MyLab_Sec_Group.id]
  subnet_id = aws_subnet.MyLab-Subnet1.id
  associate_public_ip_address = true
  # include startup script
  user_data = file("./AnsibleManagedNodeDocker.sh")

  tags = {
    Name = "Docker-Server"
  }
}

# Create Apache - an AWS EC2 Instance with startup script

resource "aws_instance" "NexusServer" {
 # in case EC2 instance to be destroyed only , count=0
  count = 0
  ami = var.amazon-ami
  instance_type = var.instance_type_for_nexus
  key_name = "connect-jerkins"
  vpc_security_group_ids = [aws_security_group.MyLab_Sec_Group.id]
  subnet_id = aws_subnet.MyLab-Subnet1.id
  associate_public_ip_address = true
  # include startup script
  user_data = file("./InstallNexus.sh")

  tags = {
    Name = "Nexus-Server"
  }
}