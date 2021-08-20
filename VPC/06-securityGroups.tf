
    # Create Secutity Group

    resource "aws_security_group" "MyLab_Sec_Group" {
    name = "MyLab Security Group"
    description = "To allow inbound and outbound traffic to mylab"
    vpc_id = aws_vpc.MyLab-VPC.id

    dynamic ingress {
        iterator = port
        for_each = var.ports
        content {
                from_port = port.value
                to_port = port.value
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    } 

    tags = {
        Name = "allow traffic"
    }

    }