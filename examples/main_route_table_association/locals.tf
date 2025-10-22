locals {
  effective_vpc_id         = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
  effective_route_table_id = var.route_table_id != null ? var.route_table_id : aws_route_table.demo.id
}
