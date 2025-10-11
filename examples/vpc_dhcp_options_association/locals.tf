locals {
  effective_vpc_id          = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
  effective_dhcp_options_id = var.dhcp_options_id != null ? var.dhcp_options_id : aws_vpc_dhcp_options.demo[0].id
}
