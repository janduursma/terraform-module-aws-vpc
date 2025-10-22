locals {
  effective_route_table_id  = var.route_table_id != null ? var.route_table_id : aws_route_table.demo[0].id
  effective_vpc_endpoint_id = var.vpc_endpoint_id != null ? var.vpc_endpoint_id : aws_vpc_endpoint.demo[0].id
  effective_vpc_id          = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
}
