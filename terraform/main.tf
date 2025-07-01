terraform {
    required_providers {
      google = {
        source = "hashicorp/google"
        version = "6.41.0"
      }
    }
    backend "gcs" {
        bucket = "guptaji-tech-allianz"
        prefix = "terraform-states"
    }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}