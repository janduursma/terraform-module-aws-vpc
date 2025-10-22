module "vpc" {
  source = "../../"

  default_subnet = {
    assign_ipv6_address_on_creation     = var.assign_ipv6_address_on_creation
    availability_zone                   = var.availability_zone
    map_public_ip_on_launch             = var.map_public_ip_on_launch
    private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch
    vpc_id                              = local.effective_vpc_id
    tags                                = var.tags
  }
}
