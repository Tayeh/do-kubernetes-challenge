resource "digitalocean_kubernetes_cluster" "tayeh-cluster" {
  name   = "tayeh-cluster"
  region = "fra1"
  version = "1.21.5-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 3
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 4
  }
}