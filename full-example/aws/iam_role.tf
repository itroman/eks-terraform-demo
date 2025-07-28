resource "aws_iam_role" "production-cluster" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Sid": "EKSClusterAssumeRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sydney-production-cluster"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\"],\"Effect\":\"Deny\",\"Resource\":\"arn:aws:logs:${var.region}:${account_id}:log-group:/aws/eks/sydney-production/cluster\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"]
  max_session_duration = "3600"
  name_prefix          = "sydney-production-cluster-"
  path                 = "/"
}

resource "aws_iam_role" "EKSNodeGroupRole" { #can be removed or imported to state
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"]
  max_session_duration = "3600"
  name                 = "EKSNodeGroupRole"
  path                 = "/"
}
