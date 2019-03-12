resource "google_compute_network" "labnet" {
  name = "${var.lab-network}"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "lab-subnet-01" {
  ip_cidr_range = "10.0.0.0/24"
  name = "${var.lab-subnet-01}"
  network = "${var.lab-network}"
  depends_on = ["google_compute_network.labnet"]
}

resource "google_compute_subnetwork" "lab-subnet-2" {
  ip_cidr_range = "10.0.1.0/24"
  name = "${var.lab-subnet-02}"
  network = "${var.lab-network}"
  depends_on = ["google_compute_network.labnet"]
}

resource "google_compute_subnetwork" "lab-subnet-3" {
  ip_cidr_range = "10.0.2.0/24"
  name = "${var.lab-subnet-03}"
  network = "${var.lab-network}"
  depends_on = ["google_compute_network.labnet"]
}