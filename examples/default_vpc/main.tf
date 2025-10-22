module "vpc" {
  source = "../../"

  default_vpc = {
    assign_generated_ipv6_cidr_block     = var.assign_generated_ipv6_cidr_block
    cidr_block                           = var.cidr_block
    enable_dns_support                   = var.enable_dns_support
    enable_network_address_usage_metrics = var.enable_network_address_usage_metrics
    region                               = var.region
    tags                                 = var.tags
  }
}
