module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "cloud-migration-eks"
  cluster_version = "1.29"
  subnets         = aws_subnet.private_app[*].id
  vpc_id          = aws_vpc.main.id

  manage_aws_auth_configmap = true

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]
      min_size       = 1
      max_size       = 3
      desired_size   = 2
    }
  }

  tags = { Environment = "dev" }
}
