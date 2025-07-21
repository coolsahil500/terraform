module "eks" {
  source          = "./eks"  # or the path where eks-cluster.tf is
  cluster_name    = "itw-project-cluster"
  cluster_version = "1.27"

  vpc_id     = data.aws_vpc.default.id
  subnet_ids = data.aws_subnets.default.ids

  enable_irsa = true


}

