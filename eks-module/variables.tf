variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the cluster"
  type        = list(string)
}

variable "node_groups" {
  description = "Map of node groups and their configs"
  type = map(object({
    instance_types = list(string)
    desired_size   = number
    min_size       = number
    max_size       = number
  }))
}

variable "eks_addons" {
  description = "List of addons to install"
  type        = list(string)
  default     = []
}

variable "eks_addon_versions" {
  description = "Optional map of addon versions"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "AWS region for the EKS deployment"
  type        = string
}
