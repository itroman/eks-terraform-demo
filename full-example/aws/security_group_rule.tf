resource "aws_security_group_rule" "sg_6_egress_tcp_10250_10250_sg_0" {
  description              = "Cluster API to node kubelets"
  from_port                = "10250"
  protocol                 = "tcp"
  security_group_id        = "${aws_security_group.production_cluster_sg.id}"
  source_security_group_id = "${aws_security_group.production_node_sg_1.id}"
  to_port                  = "10250"
  type                     = "egress"
}

resource "aws_security_group_rule" "sg_6_egress_tcp_443_443_sg_0" {
  description              = "Cluster API to node groups"
  from_port                = "443"
  protocol                 = "tcp"
  security_group_id        = "${aws_security_group.production_cluster_sg.id}"
  source_security_group_id = "${aws_security_group.production_node_sg_1.id}"
  to_port                  = "443"
  type                     = "egress"
}

resource "aws_security_group_rule" "sg_6_ingress_tcp_443_443_sg_0" {
  description              = "Node groups to cluster API"
  from_port                = "443"
  protocol                 = "tcp"
  security_group_id        = "${aws_security_group.production_cluster_sg.id}"
  source_security_group_id = "${aws_security_group.production_node_sg_1.id}"
  to_port                  = "443"
  type                     = "ingress"
}
