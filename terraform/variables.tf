variable "project_id" {
    description = "GCP project id"
}

variable "region" {    
    description = "GCP region"
}

variable "vpc_network_name" {
    description = "GCP VPC network name"
}

variable "subnetwork_name" {
    description = "GCP VPC subnetwork name"
}

variable "subnetwork_cidr" {
    description = "GCP VPC subnetwork cidr"
}

variable "subnet_pod_secondary_range" {
    description = "Secondary CIDR range for kubernetes cluster pods"
}

variable "subet_service_secondary_range" {
    description = "Secondary CIDR range for kubernetes cluster services"
}

variable "cluster_name" {
    description = "GKE cluster name"
}

variable "primary_cluster_zone" {
    description = "Zone for gke control plane"
}

variable "cluster_initial_node_count" {
    description = "Initial worker node count for gke"
}

variable "cluster_node_pool_name" {
    description = "Name of the custom node pool that will be attached to gke cluster"
}

variable "cluster_primary_node_pool_locations" {
    description = "Permissible zones for cluster worker nodes"
}

variable "cluster_node_count" {
    description = "Desired number of cluster worker node available all the time"
}

variable "cluster_min_nodes" {
    description = "Minimum cluster worker node"
}

variable "cluster_max_nodes" {
    description = "Maximum cluster worker node"
}

variable "cluster_machine_type" {
    description = "Machine type for the cluster worker node "
}

variable "cluster_disk_type" {
    description = "Disk type for the cluster worker node"
}

variable "cluster_disk_size" {
    description = "Disk size for the cluster worker node"
}

variable "cloud_router_name" {
    description = "Name of the cloud router"
}

variable "cloud_nat_name" {
    description = "Name of the cloud nat"
}

