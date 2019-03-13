provider "google" {
  credentials = "${var.gcp_credentials_file}"
  project     = "${var.gcp_project_name["gcp_terraform"]}"
  region      = "${var.gcp_region_name["sa_east1"]}"
}

module "gcp_compute" {
  source = "/home/luizgjsouza/IdeaProjects/gcp_terraform/modules/compute"
  gcp_instances_count = "2"
//  gcp_zone_name = "${var.gcp_zone_name["sa_east_c"]}"
  lab-subnet = "lab-01"
  gcp_region_name = "${var.gcp_region_name["sa_east1"]}"
  gcp_zone_name = "${var.gcp_zone_name["sa_east_a"]}"
}

module "gcp_vpc" {
  source = "/home/luizgjsouza/IdeaProjects/gcp_terraform/modules/network"
  lab-networks-names = "lab-net-01"

  lab-subnets =[
  {
    subnet_name = "lab-01"
    subnet_ip_range = "10.0.1.0/24"
    subnet_region = "${var.gcp_region_name["sa_east1"]}"
  },
    {
      subnet_name = "lab-02"
      subnet_ip_range = "10.0.2.0/24"
      subnet_region = "${var.gcp_region_name["sa_east1"]}"
    }
  ]
}
//module "gcp_firewall" {
//  source = "/home/luizgjsouza/IdeaProjects/gcp_terraform/modules/firewall"
//}
