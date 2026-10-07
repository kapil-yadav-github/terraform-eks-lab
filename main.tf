module "networking" {
  source = "./modules/networking"

  name = "${var.project_name}-${var.environment}-vpc"
  cidr = var.vpc_cidr

  azs = var.azs

  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs

  tags = local.default_tags
}

module "eks" {
  source = "./modules/eks"

  cluster_name       = var.cluster_name
  kubernetes_version = var.kubernetes_version
  vpc_id             = module.networking.vpc_id
  subnet_ids         = module.networking.private_subnets

  node_group_name    = "${var.cluster_name}-ng"
  node_instance_type = var.node_instance_type
  min_size           = var.node_min_size
  max_size           = var.node_max_size
  desired_size       = var.node_desired_size

  tags = local.default_tags
}
