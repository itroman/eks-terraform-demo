resource "aws_subnet" "subnet_3" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "168.32.3.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = var.availability_zone_1

  tags = {
    Name                                            = "${var.project_tag}-vpc-private-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"               = "1"
  }

  tags_all = {
    Name                                            = "${var.project_tag}-vpc-private-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"               = "1"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_subnet" "subnet_7" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "168.32.6.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = var.availability_zone_1

  tags = {
    Name                                            = "${var.project_tag}-vpc-public-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                        = "1"
  }

  tags_all = {
    Name                                            = "${var.project_tag}-vpc-public-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                        = "1"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_subnet" "subnet_6" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "168.32.4.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = var.availability_zone_1

  tags = {
    Name                                            = "${var.project_tag}-vpc-public-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                        = "1"
  }

  tags_all = {
    Name                                            = "${var.project_tag}-vpc-public-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                        = "1"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_subnet" "subnet_4" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "168.32.1.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = var.availability_zone_1

  tags = {
    Name                                            = "${var.eks_cluster_name}-vpc-private-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"               = "1"
  }

  tags_all = {
    Name                                            = "${var.eks_cluster_name}-vpc-private-${var.availability_zone_1}"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"               = "1"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_subnet" "subnet_8" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "168.32.5.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "ap-southeast-2b"

  tags = {
    Name                                            = "${var.eks_cluster_name}-vpc-public-ap-southeast-2b"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                        = "1"
  }

  tags_all = {
    Name                                            = "${var.eks_cluster_name}-vpc-public-ap-southeast-2b"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"                        = "1"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_subnet" "subnet_5" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "168.32.2.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "ap-southeast-2b"

  tags = {
    Name                                            = "${var.eks_cluster_name}-vpc-private-ap-southeast-2b"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"               = "1"
  }

  tags_all = {
    Name                                            = "${var.eks_cluster_name}-vpc-private-ap-southeast-2b"
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"               = "1"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_subnet" "subnet_9" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = aws_vpc.vpc_2.id
}

resource "aws_subnet" "subnet_1" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = aws_vpc.vpc_2.id
}

resource "aws_subnet" "subnet-2" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = aws_vpc.vpc_2.id
}
