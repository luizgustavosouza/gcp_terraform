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
  type = "list"

  default = [{
    region_name = "us-central1"
  }, {
    region_name = "southamerica-east1"
  }]
}

variable "gcp_zone_name" {
  type = "list"

  default = [{
    zone_name = "us-central1-a"
  }, {
    zone_name = "us-central1-b"
  }, {
    zone_name = "us-central1-c"
  }, {
    zone_name = "us-central1-f"
  }, {
    zone_name = "southamerica-east1-a"
  },
    {
      zone_name = "southamerica-east1-b"
    },
    {
      zone_name = "southamerica-east1-c"
    },
  ]
}

variable "gcp_machine_types" {
  type        = "string"
  description = "GCP Machine Type"
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
