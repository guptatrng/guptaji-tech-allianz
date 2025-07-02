#Resource block for Cloud Router which will be used by Cloud NAT in order to pull public base image
resource "google_compute_router" "guptaji-tech-allianz-router" {
  name    = var.cloud_router_name
  network = google_compute_network.guptaji-tech-allianz-vpc.id
  region  = var.region
}

#Resource block for Cloud NAT
resource "google_compute_router_nat" "guptaji-tech-allianz-nat" {
  name                               = var.cloud_nat_name
  router                             = google_compute_router.guptaji-tech-allianz-router.name
  region                             = var.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}