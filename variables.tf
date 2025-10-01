variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for EKS"
  type        = list(string)
}

variable "node_groups" {
  description = "Map of node groups with configs"
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
  description = "Optional addon versions"
  type        = map(string)
  default     = {}
}
variable "region" {
  description = "AWS region to deploy EKS cluster"
  type        = string
}
