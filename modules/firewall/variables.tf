variable "google_firewall_web_ports" {
  type = "list"
  default = [80,443]
}

variable "google_firewall_protocols" {
  type = "string"
  default = "tcp"
}

variable "target_tags" {
  type = "string"
  default = "ssh-inside"
}