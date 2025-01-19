terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    // Uncomment if you need google-beta
    # google-beta = {
    #   source = "hashicorp/google-beta"
    # }
  }
  required_version = ">= 0.13"
}

provider "google" {
  project     = var.project_id
  region      = var.region
  # credentials = file("../owner-service-account.json")
}
