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