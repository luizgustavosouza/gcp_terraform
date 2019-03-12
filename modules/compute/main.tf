resource "google_compute_instance" "google-vm-instance" {
  "boot_disk" {
    initialize_params {
      image = "${var.gcp_instances_images["debian9"]}"
    }
  }
  count = "${var.gcp_instances_count}"
  machine_type = "${var.gcp_machine_types}"
  name = "${var.gcp_instance_name}-${count.index}"
  zone = "${var.gcp_zone_name["sa_east_c"]}"
//  depends_on = ["google_compute_subnetwork.lab-subnet-01"]



  "network_interface" {
    subnetwork = "${var.lab-subnet-01}"
    access_config {}
  }
}