locals {
  default_tags = merge(
    {
      Environment = var.environment
      Project     = var.project_name
      Owner       = var.owner
      CostCenter  = var.cost_center
      Application = var.application_name
      ManagedBy   = "Terraform"
      Terraform   = "true"
    },
    var.extra_tags
  )
}
