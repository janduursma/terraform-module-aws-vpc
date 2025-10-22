locals {
  effective_instance_id          = var.instance_id != null ? var.instance_id : aws_instance.demo.id
  effective_network_interface_id = var.network_interface_id != null ? var.network_interface_id : aws_network_interface.demo[0].id
  effective_subnet_id            = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
}
