output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "cluster_arn" {
  value = aws_eks_cluster.eks_cluster.arn
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "node_group_names" {
  value = [for ng in aws_eks_node_group.managed_node_groups : ng.node_group_name]
}

output "node_role_arn" {
  value = aws_iam_role.eks_node_role.arn
}

output "enabled_addons" {
  value = [for a in aws_eks_addon.eks_addons : a.addon_name]
}

output "cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}
