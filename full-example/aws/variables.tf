variable "region" {
  type        = string
  default     = "us-east-2"
  description = "value of the region where the resources will be created"
}

variable "project_tag" {
  type = string
  default = "demo"
}

variable "availability_zone_1" {
  type = string
  default = "us-east-2a"
}

variable "availability_zone_2" {
  default = "us-east-2b"
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
