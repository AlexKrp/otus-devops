variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for provisioner access"
}

variable app_disk_image {
  description = "Disk image for node app"
  default     = "nodeapp-base"
}

variable db_disk_image {
  description = "Disk image for node db"
  default     = "node-db-base"
}
