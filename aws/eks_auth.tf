resource "aws_eks_cluster_auth" "cluster_auth" {
  name = aws_eks_cluster.my_cluster.name

  depends_on = [
    aws_eks_cluster.my_cluster,
    aws_eks_node_group.my_node_group
  ]
}