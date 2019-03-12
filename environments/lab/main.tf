provider "google" {
  credentials = "${var.gcp_credentials_file}"
  project     = "${var.gcp_project_name["gcp_terraform"]}"
  region      = "${var.gcp_region_name["sa_east1"]}"
}

module "gcp_compute" {
  source = "/home/luizgjsouza/IdeaProjects/gcp_terraform/modules/compute"
  gcp_instance_name = "linux-lab"
  gcp_instances_count = "3"
//  gcp_zone_name = "${var.gcp_zone_name["sa_east_c"]}"
  lab-subnet-01 = "lab-01"



}

module "gcp_vpc" {
  source = "/home/luizgjsouza/IdeaProjects/gcp_terraform/modules/network"
  lab-subnet-01 = "${var.lab-subnets["subnet01"]}"
  lab-subnet-02 = "${var.lab-subnets["subnet02"]}"
  lab-subnet-03 = "${var.lab-subnets["subnet03"]}"
  lab-network = "${var.lab-network}"

}

//module "gcp_firewall" {
//  source = "/home/luizgjsouza/IdeaProjects/gcp_terraform/modules/firewall"
//}
