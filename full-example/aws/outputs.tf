output "aws_iam_role-production-cluster_id" {
  value = aws_iam_role.production-cluster.id
}

output "aws_eks_cluster-production_id" {
  value = aws_eks_cluster.production.id
}

output "aws_eks_node_group_workers_id" {
  value = aws_eks_node_group.workers.id
}

output "aws_db_instance_production_id" {
  value = aws_db_instance.production.id
}

output "aws_security_group-production_cluster_sg_id" {
  value = aws_security_group.production_cluster_sg.id
}

output "aws_security_group_production_node_sg_1_id" {
  value = aws_security_group.production_node_sg_1.id
}

output "aws_security_group_eks_cluster_production_sg_2_id" {
  value = aws_security_group.eks_cluster_production_sg_2.id
}

output "aws_security_group_k8s_elb_sg_3_id" {
  value = aws_security_group.k8s_elb_sg_3.id
}

output "aws_security_group_workers_eks_node_group_sg_5_id" {
  value = aws_security_group.workers_eks_node_group_sg_5.id
}

output "aws_vpc_vpc" {
  value = aws_vpc.vpc.id
}

output "aws_internet_gateway_igw_id" {
  value = aws_internet_gateway.igw.id
}

output "aws_eip_eipalloc_id" {
  value = aws_eip.eipalloc.id
}

output "aws_nat_gateway_nat_id" {
  value = aws_nat_gateway.nat.id
}

output "aws_iam_role_EKSNodeGroupRole_id" {
  value = aws_iam_role.EKSNodeGroupRole.id #can be removed or imported to state
}

output "aws_security_group_rule_sg_6_egress_tcp_10250_10250_sg_0_id" {
  value = aws_security_group_rule.sg_6_egress_tcp_10250_10250_sg_0.id
}

output "aws_security_group_rule_sg_6_egress_tcp_443_443_sg_0_id" {
  value = aws_security_group_rule.sg_6_egress_tcp_443_443_sg_0.id
}

output "aws_security_group_rule_sg_6_ingress_tcp_443_443_sg_0_id" {
  value = aws_security_group_rule.sg_6_ingress_tcp_443_443_sg_0.id
}

output "aws_secretsmanager_secret_production_sidekiq_id" {
  value = aws_secretsmanager_secret.production_sidekiq.id
}

output "aws_secretsmanager_secret_production_website_id" {
  value = aws_secretsmanager_secret.production_website.id
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
