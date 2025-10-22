locals {
  effective_route_table_id = var.default_route_table_id == null ? data.aws_route_table.default.id : var.default_route_table_id
}
