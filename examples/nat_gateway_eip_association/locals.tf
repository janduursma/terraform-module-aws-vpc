locals {
  effective_allocation_id  = var.allocation_id != null ? var.allocation_id : aws_eip.demo[0].id
  effective_nat_gateway_id = var.nat_gateway_id != null ? var.nat_gateway_id : aws_nat_gateway.demo[0].id
  effective_subnet_id      = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
}
