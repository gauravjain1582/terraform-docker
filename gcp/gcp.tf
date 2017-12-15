// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("project-terraform01-78e32c6d07f4.json")}"
  project     = "project-terraform01"
  region      = "us-central1"
}

data "google_compute_zones" "available" {}

// Create a new instance
resource "google_compute_instance" "default" {
  #project = "${google_project_services.project.project}"
  project     = "project-terraform01"
  zone = "${data.google_compute_zones.available.names[0]}"
  name = "tf-compute-1"
  machine_type = "f1-micro"
  boot_disk {
     initialize_params {
       image = "ubuntu-1604-xenial-v20170328"
     }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata {
    sshKeys = "ubuntu:SSH-PUBLIC-KEY"
  }
}
