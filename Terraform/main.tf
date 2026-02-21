provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.zone

  # Basic node configuration
  initial_node_count = 3

  node_config {
    machine_type = "e2-medium"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  # Enable basic features
  remove_default_node_pool = false
}

# Optional: Output the cluster endpoint
output "cluster_endpoint" {
  value = google_container_cluster.primary.endpoint
}

# Optional: Output the kubeconfig
output "kubeconfig" {
  value = google_container_cluster.primary.name
}
