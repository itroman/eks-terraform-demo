resource "aws_eks_node_group" "workers" {
  ami_type       = "BOTTLEROCKET_x86_64"
  capacity_type  = "ON_DEMAND"
  cluster_name   = aws_eks_cluster.production.name
  disk_size      = "20"
  instance_types = ["m5.xlarge"]

  node_group_name_prefix = "workers-"
  node_role_arn          = "arn:aws:iam::${account_id}:role/${aws_iam_role.EKSNodeGroupRole.id}" #fix this first

  scaling_config {
    desired_size = "1"
    max_size     = "5"
    min_size     = "1"
  }

  subnet_ids = ["${aws_subnet.subnet_3.id}", "${aws_subnet.subnet_4.id}", "${aws_subnet.subnet_5.id}"]

  tags = {
    Name = "workers"
  }

  tags_all = {
    Name = "workers"
  }

  update_config {
    max_unavailable = "1"
  }

  version = "1.30"
}
