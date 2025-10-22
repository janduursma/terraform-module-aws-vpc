locals {
  effective_network_acl_id = var.network_acl_id != null ? var.network_acl_id : data.aws_network_acls.default.ids[0]
  effective_subnet_id      = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
}
