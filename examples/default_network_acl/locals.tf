locals {
  effective_network_acl_id = var.default_network_acl_id != null ? var.default_network_acl_id : one(data.aws_network_acls.default.ids[*])
  effective_subnet_ids     = length(try(var.subnets_id, [])) > 0 ? var.subnets_id : data.aws_subnets.default.ids
}
