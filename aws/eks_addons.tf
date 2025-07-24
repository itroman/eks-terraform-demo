resource "aws_eks_addon" "kube_proxy" {
  cluster_name      = var.cluster_name
  addon_name        = "kube-proxy"
  addon_version     = var.kube_proxy
}

resource "aws_eks_addon" "core_dns" {
  cluster_name      = var.cluster_name
  addon_name        = "coredns"
  addon_version     = var.core_dns
}

resource "aws_eks_addon" "aws_ebs_csi_driver" {
  cluster_name      = var.cluster_name
  addon_name        = "aws-ebs-csi-driver"
  addon_version     = var.ebs_csi
}

resource "aws_eks_addon" "vpc_cni" {
  cluster_name = var.cluster_name
  addon_name   = "vpc-cni"
  addon_version = var.vpc_cni
}