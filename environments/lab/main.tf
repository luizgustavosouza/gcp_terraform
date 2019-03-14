module "gcp_vpc" {
  source = "../../modules/network"

  gcp_lab_networks = [{ network_name = "lab1-network" }, { network_name = "lab2-network" }]

  gcp_lab_subnetworks = [
    { subnetwork_name = "lab1-subnetwork"
      subnetwork_cider_range = "10.0.1.0/24"
    },
    {
      subnetwork_name = "lab2-subnetwork"
      subnetwork_cider_range = "10.0.2.0/24"
    }
  ]

  gcp_lab_subnetworks_regions = [
    {
      subnetwork_region = "southamerica-east1"
    },
    {
      subnetwork_region = "us-central1"
    }
  ]
}
