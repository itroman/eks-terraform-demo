resource "aws_eks_cluster" "demo_cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.demo1.arn
  version  = "1.33"

  vpc_config {
    subnet_ids = var.subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy,
  ]
}