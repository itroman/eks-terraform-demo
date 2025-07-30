resource "aws_internet_gateway" "igw" {
  tags = {
    Name = "${var.eks_cluster_name}-vpc"
  }

  tags_all = {
    Name = "${var.eks_cluster_name}-vpc"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_internet_gateway" "igw_2" {
  vpc_id = aws_vpc.vpc_2.id
}
