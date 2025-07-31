#global variables

variable "region" {
  type        = string
  default     = "us-east-2"
  description = "value of the region where the resources will be created"
}

variable "project_tag" {
  type    = string
  default = "demo"
}

variable "availability_zone_1" {
  type    = string
  default = "us-east-2a"
}

variable "availability_zone_2" {
  default = "us-east-2b"
}

variable "availability_zones" {
  type    = list(any)
  default = ["us-east-2a", "us-east-2b"]
}
#eks variables

variable "eks_cluster_name" {
  type    = string
  default = "demo-cluster"
}

variable "k8s_controlplane_version" {
  type    = string
  default = "1.30"
}
#eks node group variables

variable "k8s_worker_version" {
  type    = string
  default = "1.30"
}

variable "eks_node_group_tags" {
  type    = list(string)
  default = ["workers"]
}

variable "eks_ami" {
  type    = string
  default = "BOTTLEROCKET_x86_64"
}

variable "eks_instance_type" {
  type    = list(string)
  default = ["m5.xlarge"]
}
#eks addon variables

variable "kube_proxy" {
  type    = string
  default = "v1.33.0-eksbuild.2"
}

variable "core_dns" {
  type    = string
  default = "v1.12.2-eksbuild.4"
}

variable "ebs_csi" {
  type    = string
  default = "v1.17.0-eksbuild.1"
}

variable "vpc_cni" {
  type    = string
  default = "v1.19.5-eksbuild.3"
}

#db variables

variable "db_name" {
  type    = string
  default = "application"
}

variable "db_engine" {
  type    = string
  default = "postgresql"
}

variable "db_engine_version" {
  type    = string
  default = "17.5"
}

variable "db_instance_type" {
  type    = string
  default = "db.t3.small"
}

variable "db_username" {
  type    = string
  default = "application"
}

#db subnet variables

variable "db_subnet_description" {
  type    = string
  default = "application"
}

variable "db_subnet_name" {
  type    = string
  default = "application"
}

#vpc variables

variable "vpc_cidr" {
  type    = string
  default = "168.32.0.0/16"
}

#subnet variables

variable "public_subnets_cidr" {
  type    = list(any)
  default = ["168.32.1.0/20", "168.32.2.0/20", "168.32.3.0/20"]
}

variable "private_subnets_cidr" {
  type    = list(any)
  default = ["168.32.4.0/20", "168.32.5.0/20", "168.32.6.0/20"]
}