locals {
  effective_network_interface_id = var.network_interface_id != null ? var.network_interface_id : aws_network_interface.demo[0].id
}
