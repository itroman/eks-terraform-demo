resource "aws_eks_node_group" "demo_node_group" {
  ami_type       = var.ami
  capacity_type  = "ON_DEMAND"
  cluster_name   = var.cluster_name
  disk_size      = "20"
  instance_types = [var.instance_type]

  node_group_name = "Demo-group"
  node_role_arn   = aws_iam_role.demo1.name

  scaling_config {
    desired_size = "1"
    max_size     = "5"
    min_size     = "1"
  }

  subnet_ids = var.subnets

  tags = {
    Name = "workers"
  }

  tags_all = {
    Name = "workers"
  }

  version = "1.33"

  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
  ]
}