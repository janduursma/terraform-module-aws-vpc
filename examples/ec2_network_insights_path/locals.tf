locals {
  effective_source = var.path_source != null ? var.path_source : aws_network_interface.demo[0].id
}
