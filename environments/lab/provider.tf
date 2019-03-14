provider "google" {
  credentials = "${var.gcp_credentials_file}"
  project     = "${var.gcp_project_name["gcp_terraform"]}"
  region      = "${length(var.gcp_region_name)}"
  zone        = "${length(var.gcp_zone_name)}"
}
