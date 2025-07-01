#Resource block for defining GCP VPC
resource "google_compute_network" "guptaji-tech-allianz-vpc" {
    name                     = var.vpc_network_name
    auto_create_subnetworks  = false
}

#Resource block for defining GCP subnet
resource "google_compute_subnetwork" "guptaji-tech-allianz-subnet" {
    name          = var.subnetwork_name
    ip_cidr_range = var.subnetwork_cidr
    region        = var.region
    network       = google_compute_network.guptaji-tech-allianz-vpc.id
}