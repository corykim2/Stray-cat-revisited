terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "straycat-503411"
  region  = "asia-northeast3"
  zone    = "asia-northeast3-a"
}

resource "google_compute_instance" "practice" {
  name         = "terraform-practice"
  machine_type = "e2-micro"
  zone         = "asia-northeast3-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
