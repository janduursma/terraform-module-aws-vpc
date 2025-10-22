module "vpc" {
  source = "../../"

  vpc_dhcp_options_associations = [{
    vpc_id          = local.effective_vpc_id,
    dhcp_options_id = local.effective_dhcp_options_id
  }]
}

resource "aws_vpc_dhcp_options" "demo" {
  count = var.dhcp_options_id != null ? 0 : 1

  domain_name_servers = ["8.8.8.8", "8.8.4.4"]
}
