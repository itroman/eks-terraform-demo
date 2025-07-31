resource "aws_vpc" "vpc" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = var.vpc_cidr
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"

  tags = {
    Name = "${var.eks_cluster_name}-vpc"
  }

  tags_all = {
    Name = "${var.eks_cluster_name}-vpc"
  }
}

