locals {
  effective_vpc_id          = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
  effective_route_server_id = var.route_server_id != null ? var.route_server_id : aws_vpc_route_server.demo[0].route_server_id
  effective_route_table_id  = var.route_table_id != null ? var.route_table_id : aws_route_table.demo[0].id
}
