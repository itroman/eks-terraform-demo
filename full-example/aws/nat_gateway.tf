resource "aws_nat_gateway" "nat_1" {
  allocation_id     = aws_eip.eipalloc.id #race condition is causing this to get associated before nat creation
  connectivity_type = "public"
  private_ip        = "168.32.4.218"
  subnet_id         = aws_subnet.subnet_6.id

  tags = {
    Name = "${var.project_tag}-vpc-${var.availability_zone_1}"
  }

  tags_all = {
    Name = "${var.project_tag}-vpc-${var.availability_zone_1}"
  }
}
