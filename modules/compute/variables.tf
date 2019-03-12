variable "gcp_machine_types" {
  type        = "string"
  description = "GCP Machine Type"
  default = "f1-micro"
}

variable "gcp_instances_images" {
  type        = "map"
  description = "GCP O.S Instances"

  default = {
    debian9 = "debian-9"
    centos7 = "centos-7"
    win2012 = "windows-2012-r2"
  }
}

variable "gcp_instance_name" {
  type = "string"
}

variable "gcp_instances_count" {}

variable "lab-subnet-01" {
  type = "string"
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
