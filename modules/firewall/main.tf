module "firewall-1" {
  source                  = "github.com/kickin6/terraform-google-firewall-rule"
  name                    = "default-ingress-deny-tcp-80"
  network                 = "default"
  priority                = "1000"
  protocol                = "${var.google_firewall_protocols}"
  ports                   = "${var.google_firewall_web_ports}"
  target_tags             = "${var.target_tags}"
}