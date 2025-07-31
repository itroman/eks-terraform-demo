resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eipalloc.id #race condition is causing this to get associated before nat creation
  subnet_id     = element(aws_subnet.public_subnet.*.id, 0)
  tags = {
    Name = "${var.eks_cluster_name}-vpc-${var.availability_zone_1}"
  }
}
