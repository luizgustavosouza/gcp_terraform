resource "google_compute_network" "lab-networks" {
  count = "${length(var.gcp_lab_networks)}"
  name = "${lookup(var.gcp_lab_networks[count.index], "network_name")}"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "lab-subnetworks" {
  count = "${length(var.gcp_lab_subnetworks)}"
  ip_cidr_range = "${lookup(var.gcp_lab_subnetworks[count.index], "subnetwork_cider_range" )}"
  name = "${lookup(var.gcp_lab_subnetworks[count.index], "subnetwork_name" )}"
  network = "${lookup(var.gcp_lab_networks[count.index], "network_name" )}"
  region = "${lookup(var.gcp_lab_subnetworks_regions[count.index], "subnetwork_region")}"
  depends_on = ["google_compute_network.lab-networks"]
}