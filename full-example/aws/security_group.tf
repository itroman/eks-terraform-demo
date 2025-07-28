resource "aws_security_group" "application-db-1" {
  description = "Application database"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["168.32.0.0/16"]
    description = "eks "
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  ingress {
    from_port       = "5432"
    protocol        = "tcp"
    security_groups = ["${aws_security_group.rancher_machine_sg_4.id}"]
    self            = "false"
    to_port         = "5432"
  }

  name = "application-db"

  tags = {
    Name = "application-db"
  }

  tags_all = {
    Name = "application-db"
  }

  vpc_id = aws_vpc.vpc_2.id
}

resource "aws_security_group" "production_cluster_sg" {
  description = "EKS cluster security group"
  name_prefix = "sydney-production-cluster-"

  tags = {
    Name = "sydney-production-cluster"
  }

  tags_all = {
    Name = "sydney-production-cluster"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_security_group" "production_node_sg_1" {
  description = "EKS node shared security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Egress NTP/TCP to internet"
    from_port   = "123"
    protocol    = "tcp"
    self        = "false"
    to_port     = "123"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Egress NTP/UDP to internet"
    from_port   = "123"
    protocol    = "udp"
    self        = "false"
    to_port     = "123"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Egress all HTTPS to internet"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  egress {
    description     = "Node groups to cluster API"
    from_port       = "443"
    protocol        = "tcp"
    security_groups = ["${aws_security_group.production_cluster_sg.id}"]
    self            = "false"
    to_port         = "443"
  }

  egress {
    description = "Node to node CoreDNS"
    from_port   = "53"
    protocol    = "tcp"
    self        = "true"
    to_port     = "53"
  }

  egress {
    description = "Node to node CoreDNS"
    from_port   = "53"
    protocol    = "udp"
    self        = "true"
    to_port     = "53"
  }

  ingress {
    description     = "Cluster API to node groups"
    from_port       = "443"
    protocol        = "tcp"
    security_groups = ["${aws_security_group.production_cluster_sg.id}"]
    self            = "false"
    to_port         = "443"
  }

  ingress {
    description     = "Cluster API to node kubelets"
    from_port       = "10250"
    protocol        = "tcp"
    security_groups = ["${aws_security_group.production_cluster_sg.id}"]
    self            = "false"
    to_port         = "10250"
  }

  ingress {
    description = "Node to node CoreDNS"
    from_port   = "53"
    protocol    = "tcp"
    self        = "true"
    to_port     = "53"
  }

  ingress {
    description = "Node to node CoreDNS"
    from_port   = "53"
    protocol    = "udp"
    self        = "true"
    to_port     = "53"
  }

  ingress {
    from_port       = "0"
    protocol        = "-1"
    security_groups = ["${aws_security_group.k8s_elb_sg_3.id}"]
    self            = "false"
    to_port         = "0"
  }

  name_prefix = "${var.project_tag}-node-"

  tags = {
    Name                                      = "${var.project_tag}-node"
    "kubernetes.io/cluster/sydney-production" = "owned"
  }

  tags_all = {
    Name                                      = "${var.project_tag}-node"
    "kubernetes.io/cluster/sydney-production" = "owned"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_security_group" "eks_cluster_production_sg_2" {
  description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name = "eks-cluster-sg-sydney-production-2055894760"

  tags = {
    Name                                      = "eks-cluster-sg-sydney-production-2055894760"
    "kubernetes.io/cluster/sydney-production" = "owned"
  }

  tags_all = {
    Name                                      = "eks-cluster-sg-sydney-production-2055894760"
    "kubernetes.io/cluster/sydney-production" = "owned"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_security_group" "k8s_elb_sg_3" {
  description = "Security group for Kubernetes ELB a4e963915840d45a48a9cbfbf6d16e11 (ingress-nginx/ingress-nginx-controller)"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3"
    protocol    = "icmp"
    self        = "false"
    to_port     = "4"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name_prefix = "k8s-elb-a4e963"

  tags = {
    "kubernetes.io/cluster/sydney-production" = "owned"
  }

  tags_all = {
    "kubernetes.io/cluster/sydney-production" = "owned"
  }

  vpc_id = aws_vpc.vpc_1.id
}

resource "aws_security_group" "rancher_machine_sg_4" {
  description = "Rancher default security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Elasticache Redis"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "2376"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2376"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "4500"
    protocol    = "udp"
    self        = "false"
    to_port     = "4500"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "500"
    protocol    = "udp"
    self        = "false"
    to_port     = "500"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "rancher-machine"

  tags = {
    Name = "rancher-machine"
  }

  tags_all = {
    Name = "rancher-machine"
  }

  vpc_id = aws_vpc.vpc_2.id
}

resource "aws_security_group" "workers_eks_node_group_sg_5" {
  description = "EKS managed node group security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "redis"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "smtp"
    from_port   = "587"
    protocol    = "tcp"
    self        = "false"
    to_port     = "587"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "5432"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5432"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  egress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  ingress {
    from_port       = "0"
    protocol        = "-1"
    security_groups = ["${aws_security_group.production_cluster_sg.id}"]
    self            = "true"
    to_port         = "0"
  }

  name_prefix = "workers-eks-node-group-"

  tags = {
    Name = "workers-eks-node-group"
  }

  tags_all = {
    Name = "workers-eks-node-group"
  }

  vpc_id = aws_vpc.vpc_1.id
}
