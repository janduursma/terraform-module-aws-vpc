locals {
  effective_route_server_id = var.route_server_id != null ? var.route_server_id : aws_vpc_route_server.demo[0].route_server_id
  effective_subnet_id       = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
}
