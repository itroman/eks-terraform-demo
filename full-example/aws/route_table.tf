resource "aws_route_table" "rtb_3" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  route {
    cidr_block                = "172.31.0.0/16"
    vpc_peering_connection_id = aws_vpc_peering_connection.pcx.id
  }

  tags = {
    Name = "${var.project_tag}-vpc-public"
  }

  tags_all = {
    Name = "${var.project_tag}-vpc-public"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_route_table" "rtb_4" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_1.id
  }

  tags = {
    Name = "${var.project_tag}-vpc-private"
  }

  tags_all = {
    Name = "${var.project_tag}-vpc-private"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_route_table" "rtb_1" {
  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_route_table" "rtb_2" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_2.id
  }

  route {
    cidr_block                = "168.32.0.0/16"
    vpc_peering_connection_id = aws_vpc_peering_connection.pcx.id
  }

  vpc_id = aws_vpc.vpc_2.id
}
