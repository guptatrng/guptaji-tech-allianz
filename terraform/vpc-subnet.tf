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
    #Secondary subnet IP range for kubernetes cluster pods
    secondary_ip_range {
        range_name    = "guptaji-tech-allianz-subnet-pod-range"
        ip_cidr_range = var.subnet_pod_secondary_range
    }
    #Secondary subnet IP range for kubernetes cluster pods
    secondary_ip_range {
        range_name    = "guptaji-tech-allianz-subnet-service-range"
        ip_cidr_range = var.subet_service_secondary_range
    }
}