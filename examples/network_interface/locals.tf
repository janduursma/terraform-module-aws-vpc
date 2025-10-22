locals {
  effective_subnet_id = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
}
