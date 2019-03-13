variable "gcp_machine_types" {
  type        = "string"
  description = "GCP Machine Type"
  default = "f1-micro"
}

variable "gcp_instances_images_name" {
  type        = "map"
  description = "GCP O.S Instances"

  default = {
    debian9 = "debian-9"
    centos7 = "centos-7"
    win2012 = "windows-2012-r2"
  }
}

variable "gcp_instances_name_prefix" {
  type = "map"
  default = {
    debian-9 = "lxlabdebian"
    centos-7 = "lxlabcentos"
  }
}

variable "gcp_instances_count" {}

variable "lab-subnet" {
  type = "string"
}

variable "gcp_region_name" {
  type = "string"
}

variable "gcp_zone_name" {
  type = "string"
}