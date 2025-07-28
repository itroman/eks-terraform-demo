resource "aws_route_table_association" "subnet_3" {
  route_table_id = aws_route_table.rtb_4.id
  subnet_id      = aws_subnet.subnet_3.id
}

resource "aws_route_table_association" "subnet_7" {
  route_table_id = aws_route_table.rtb_3.id
  subnet_id      = aws_subnet.subnet_7.id
}

resource "aws_route_table_association" "subnet_6" {
  route_table_id = aws_route_table.rtb_3.id
  subnet_id      = aws_subnet.subnet_6.id
}

resource "aws_route_table_association" "subnet_4" {
  route_table_id = aws_route_table.rtb_4.id
  subnet_id      = aws_subnet.subnet_4.id
}

resource "aws_route_table_association" "subnet_8" {
  route_table_id = aws_route_table.rtb_3.id
  subnet_id      = aws_subnet.subnet_8.id
}

resource "aws_route_table_association" "subnet_5" {
  route_table_id = aws_route_table.rtb_4.id
  subnet_id      = aws_subnet.subnet_5.id
}
