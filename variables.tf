variable "aws_region" {
  description = "AWS region where the EKS cluster is deployed"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Name of the project or workload"
  type        = string
  default     = "ecommerce"
}

variable "owner" {
  description = "Owner or team responsible for the environment"
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "Cost center for billing and governance"
  type        = string
  default     = "engineering"
}

variable "application_name" {
  description = "Application name used for grouping resources"
  type        = string
  default     = "ecommerce"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "ecommerce-eks-dev"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.31"
}

variable "node_instance_type" {
  description = "EKS worker node instance type"
  type        = string
  default     = "t3.medium"
}

variable "node_min_size" {
  description = "Minimum size of the managed node group"
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Maximum size of the managed node group"
  type        = number
  default     = 3
}

variable "node_desired_size" {
  description = "Desired size of the managed node group"
  type        = number
  default     = 1
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "azs" {
  description = "Availability zones for the VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24"]
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.10.101.0/24", "10.10.102.0/24"]
}

variable "extra_tags" {
  description = "Additional custom tags for all resources"
  type        = map(string)
  default     = {}
}