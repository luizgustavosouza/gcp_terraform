resource "google_compute_network" "lab-networks" {
  name = "${var.lab-networks-names}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "lab-subnetworks" {
  count = "${length(var.lab-subnets)}"
  ip_cidr_range = "${lookup(var.lab-subnets[count.index],"subnet_ip_range")}"
  name = "${lookup(var.lab-subnets[count.index], "subnet_name")}"
  network = "${google_compute_network.lab-networks.name}"
}