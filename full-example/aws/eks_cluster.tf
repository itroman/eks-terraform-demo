resource "aws_eks_cluster" "production" {
  access_config {
    authentication_mode                         = "CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = "true"
  }

  bootstrap_self_managed_addons = "true"
  enabled_cluster_log_types     = ["api", "audit", "authenticator"]

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
  }

  name     = "sydney-production"
  role_arn = "arn:aws:iam::${account_id}:role/${aws_iam_role.production-cluster.id}"

  version = "1.30"

  vpc_config {
    endpoint_private_access = "false"
    endpoint_public_access  = "true"
    public_access_cidrs     = ["0.0.0.0/0"]
    security_group_ids      = ["${aws_security_group.production_cluster_sg.id}"]
    subnet_ids              = ["${aws_subnet.subnet_3.id}", "${aws_subnet.subnet_4.id}", "${aws_subnet.subnet_5.id}"]
  }
}
