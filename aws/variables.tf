variable "region" {
  type        = string
  default     = "us-east-2"
  description = "value of the region where the resources will be created"
}

variable "bucket" {
  type = string
  default = "demo-2025-07-23-bucket"
  description = "name of bucket where tf state is stored"
}

variable "key" {
  type = string
  default = "demo/terraform.tfstate"
  description = "key value for storing tf state in dynamodb"
}

variable "dynamodb_table"  {
  type = string
  default = "demo_tf_lockid"
  description = "name of dynamodb table"
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
  default = "ami-02f7c3a0c32f3f59e"
}

variable "instance_type" {
  type = string
  default = "t2.medium"
}