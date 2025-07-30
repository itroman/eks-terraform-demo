resource "aws_eip" "eipalloc" {
  domain               = "vpc"
  network_border_group = var.region
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "${var.eks_cluster_name}-vpc-${var.availability_zone_1}"
  }

  tags_all = {
    Name = "${var.eks_cluster_name}-vpc-${var.availability_zone_1}"
  }

}
