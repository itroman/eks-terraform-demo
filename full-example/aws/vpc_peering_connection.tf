resource "aws_vpc_peering_connection" "pcx" {
  accepter {
    allow_remote_vpc_dns_resolution = "false"
  }

  peer_owner_id = account_id
  peer_vpc_id   = aws_vpc.vpc_1.id
  auto_accept   = true

  requester {
    allow_remote_vpc_dns_resolution = "false"
  }

  tags = {
    Name = "${var.eks_cluster_name}-eks"
  }

  tags_all = {
    Name = "${var.eks_cluster_name}-eks"
  }

  vpc_id = aws_vpc.vpc_2.id
}
