locals {
  effective_subnet_id       = var.subnet_id != null ? var.subnet_id : data.aws_subnets.default.ids[0]
  effective_vpc_endpoint_id = var.vpc_endpoint_id != null ? var.vpc_endpoint_id : aws_vpc_endpoint.demo[0].id
  effective_vpc_id          = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
}
