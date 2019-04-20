resource "google_compute_instance" "app" {
  name         = "node-app"
  machine_type = "g1-small"
  zone         = "europe-west1-b"
  tags         = ["node-app"]

  boot_disk {
    initialize_params {
      image = "${var.app_disk_image}"
    }
  }

  network_interface {
    network = "default"

    access_config = {
      nat_ip = "${google_compute_address.app_ip.address}"
    }
  }

  metadata {
    sshKeys = "appuser:${file(var.public_key_path)}"
  }
}

resource "google_compute_firewall" "firewall_node" {
  name = "allow-node-8081"

  # Network name to apply the rule 
  network = "default"

  # Policy 
  allow {
    protocol = "tcp"
    ports    = ["8081"]
  }

  # Source ip to allow
  source_ranges = ["0.0.0.0/0"]

  # Policy for instances with tag ...
  target_tags = ["node-app"]
}

resource "google_compute_address" "app_ip" {
  name = "node-app-ip"
}
