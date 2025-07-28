resource "aws_main_route_table_association" "vpc_1" {
  route_table_id = aws_route_table.rtb_1.id
  vpc_id         = aws_vpc.vpc_1.id
}

resource "aws_main_route_table_association" "vpc_2" {
  route_table_id = aws_route_table.rtb_2.id
  vpc_id         = aws_vpc.vpc_2.id
}
