locals {
  effective_account_id = coalesce(
    var.aws_account_id,
    try(data.aws_caller_identity.current.account_id, null)
  )
  effective_network_interface_id = var.network_interface_id != null ? var.network_interface_id : aws_network_interface.demo[0].id
  effective_subnet_id            = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
}
