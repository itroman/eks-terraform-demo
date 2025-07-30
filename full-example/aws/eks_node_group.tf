resource "aws_eks_node_group" "workers" {
  ami_type       = var.eks_ami
  capacity_type  = "ON_DEMAND"
  cluster_name   = aws_eks_cluster.production.name
  disk_size      = "20"
  instance_types = var.eks_instance_type

  node_group_name_prefix = "workers-"
  node_role_arn          = "arn:aws:iam::${account_id}:role/${aws_iam_role.EKSNodeGroupRole.id}" #fix this first

  scaling_config {
    desired_size = "1"
    max_size     = "5"
    min_size     = "1"
  }

  subnet_ids = ["${aws_subnet.subnet_3.id}", "${aws_subnet.subnet_4.id}", "${aws_subnet.subnet_5.id}"]

  tags = {
    Name = var.eks_node_group_tags[0]
  }

  tags_all = {
    Name = var.eks_node_group_tags[0]
  }

  update_config {
    max_unavailable = "1"
  }

  version = var.k8s_worker_version
}
