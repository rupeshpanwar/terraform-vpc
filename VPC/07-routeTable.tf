

# Create route table and association

resource "aws_route_table" "MyLab_RouteTable" {
    vpc_id = aws_vpc.MyLab-VPC.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.MyLab-IntGW.id
    }

    tags = {
        Name = "MyLab_Routetable"
    }
}

# Create route table association
resource "aws_route_table_association" "MyLab_Assn" {
    subnet_id = aws_subnet.MyLab-Subnet1.id
    route_table_id = aws_route_table.MyLab_RouteTable.id
}