#Resource block for the main gke cluster
resource "google_container_cluster" "guptaji-tech-allianz-cluster" {
  name     = var.cluster_name
  location = var.primary_cluster_zone

  network    = google_compute_network.guptaji-tech-allianz-vpc.id
  subnetwork = google_compute_subnetwork.guptaji-tech-allianz-subnet.id

  remove_default_node_pool = true       #Remove default node pool to add custom nodepool with autoscaling
  initial_node_count       = var.cluster_initial_node_count

  networking_mode = "VPC_NATIVE"

  ip_allocation_policy {
    cluster_secondary_range_name  = "guptaji-tech-allianz-subnet-pod-range"
    services_secondary_range_name = "guptaji-tech-allianz-subnet-service-range"
  }

  private_cluster_config {
    enable_private_nodes = true
  }

  deletion_protection = false

}

#Resource block for the node pool attached to gke cluster
resource "google_container_node_pool" "guptaji-tech-allianz-node-pool" {
  name       = var.cluster_node_pool_name
  location   = var.cluster_primary_node_pool_locations
  cluster    = google_container_cluster.guptaji-tech-allianz-cluster.id
  node_count = var.cluster_node_count

  autoscaling {
    min_node_count = var.cluster_min_nodes
    max_node_count = var.cluster_max_nodes
  }

  node_config {
    machine_type = var.cluster_machine_type
    disk_type    = var.cluster_disk_type
    disk_size_gb = var.cluster_disk_size
  }
}