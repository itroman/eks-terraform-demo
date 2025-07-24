variable "region" {
  type        = string
  default     = "us-east-2"
  description = "value of the region where the resources will be created"
}

variable "cluster_name" {
  type = string
  default = "demo_cluster"
}

variable "subnets" {
  type = list
  default = ["subnet-42ac3025","subnet-42ac3025"]
}

variable "ami" {
  type =  string
  default = "BOTTLEROCKET_x86_64"
}

variable "instance_type" {
  type = string
  default = "t2.medium"
}

variable "kube_proxy" {
  type = string
  default = "v1.33.0-eksbuild.2"
}

variable "core_dns" {
  type = string
  default = "v1.12.2-eksbuild.4"
}

variable "ebs_csi" {
  type = string
  default = "v1.17.0-eksbuild.1"
}

variable "vpc_cni" {
  type = string
  default = "v1.19.5-eksbuild.3"
}