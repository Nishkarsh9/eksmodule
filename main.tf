module "eks_cluster" {
  source       = "./eks-module"
  region       = var.region
  cluster_name = var.cluster_name
  subnet_ids   = var.subnet_ids

  node_groups        = var.node_groups
  eks_addons         = var.eks_addons
  eks_addon_versions = var.eks_addon_versions
}
