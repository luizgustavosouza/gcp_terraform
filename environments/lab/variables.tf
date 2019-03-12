variable "gcp_credentials_file" {
  type        = "string"
  description = "GCP Credentials File"
}

variable "gcp_project_name" {
  type = "map"

  default = {
    gcp_terraform = "gcloud-terraform-labs"
    gcp_ansible   = "gcloud-ansible-labs"
  }
}

variable "gcp_region_name" {
  type = "map"

  default = {
    us_central1 = "us-central1"
    sa_east1    = "southamerica-east1"
  }
}


variable "gcp_zone_name" {
  type = "map"

  default = {
    us_central_a = "us-central1-a"
    us_central_b = "us-central1-b"
    us_central_c = "us-central1-c"
    us_central_f = "us-central1-f"
    sa_east_a    = "southamerica-east1-a"
    sa_east_b    = "southamerica-east1-b"
    sa_east_c    = "southamerica-east1-c"
  }
}

variable "lab-subnets" {
  type = "map"
  default = {
    subnet01 = "lab-01"
    subnet02 = "lab-02"
    subnet03 = "lab-03"

  }
}

variable "lab-network" {
  type = "string"
  default = "lab-net"
}