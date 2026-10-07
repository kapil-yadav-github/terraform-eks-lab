variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the cluster"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for cluster and worker nodes"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the managed node group"
  type        = string
}

variable "node_instance_type" {
  description = "Instance type for the managed node group"
  type        = string
}

variable "min_size" {
  description = "Minimum nodes in the managed node group"
  type        = number
}

variable "max_size" {
  description = "Maximum nodes in the managed node group"
  type        = number
}

variable "desired_size" {
  description = "Desired number of nodes in the managed node group"
  type        = number
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default     = {}
}
