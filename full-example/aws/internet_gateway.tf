resource "aws_internet_gateway" "igw" {
  tags = {
    Name = "${var.eks_cluster_name}-vpc"
  }

  vpc_id = aws_vpc.vpc.id
}
