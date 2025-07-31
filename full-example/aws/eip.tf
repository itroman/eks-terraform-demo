resource "aws_eip" "eipalloc" {
  vpc        = true
  depends_on = [aws_internet_gateway.igw]

  tags = {
    Name = "${var.eks_cluster_name}-vpc-${var.availability_zone_1}"
  }

}
