region       = "us-west-2"
cluster_name = "my-eks-cluster"
subnet_ids   = ["subnet-007ab14e293952289", "subnet-02a1329d679da6185"]

node_groups = {
  app-nodes = {
    instance_types = ["t3.medium"]
    desired_size   = 2
    min_size       = 1
    max_size       = 3
  }
  test-nodes = {
    instance_types = ["t2.micro"]
    desired_size   = 1
    min_size       = 1
    max_size       = 1
  }
}

eks_addons = [
  "aws-ebs-csi-driver",
  "aws-load-balancer-controller"
]

eks_addon_versions = {}
