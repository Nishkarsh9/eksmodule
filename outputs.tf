output "eks_cluster_name" {
  value = module.eks_cluster.cluster_name
}

output "eks_cluster_arn" {
  value = module.eks_cluster.cluster_arn
}

output "eks_cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "eks_node_group_names" {
  value = module.eks_cluster.node_group_names
}

output "eks_node_role_arn" {
  value = module.eks_cluster.node_role_arn
}

output "enabled_addons" {
  value = module.eks_cluster.enabled_addons
}

output "eks_cluster_role_arn" {
  value = module.eks_cluster.cluster_role_arn
}
