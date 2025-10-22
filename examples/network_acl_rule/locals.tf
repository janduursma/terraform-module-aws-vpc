locals {
  effective_network_acl_id = var.network_acl_id != null ? var.network_acl_id : data.aws_network_acls.default.ids[0]
}
