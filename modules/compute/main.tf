resource "google_compute_instance" "google-vm-instance" {
  "boot_disk" {
    initialize_params {
      image = "${var.gcp_instances_images_name["debian9"]}"
    }
  }
  count = "${var.gcp_instances_count}"
  machine_type = "${var.gcp_machine_types}"
  name = "${var.gcp_instances_name_prefix["debian-9"]}${count.index + 1}"
  zone = "${var.gcp_zone_name}"

  "network_interface" {
    subnetwork = "${var.lab-subnet}"
    access_config {}
  }
  scheduling {
    automatic_restart = true
  }
}