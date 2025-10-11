module "vpc" {
  source = "../../"

  vpc_dhcp_options = {
    domain_name_servers = ["8.8.8.8", "8.8.4.4"]
  }
}
