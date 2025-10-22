locals {
  effective_network_interface_id = var.network_interface_id != null ? var.network_interface_id : aws_network_interface.demo[0].id
  effective_security_group_id    = var.security_group_id != null ? var.security_group_id : aws_security_group.demo[0].id
  effective_subnet_id            = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
}
