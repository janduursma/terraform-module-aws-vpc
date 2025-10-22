locals {
  effective_security_group_id = var.security_group_id != null ? var.security_group_id : aws_security_group.demo.id
  effective_vpc_endpoint_id   = var.vpc_endpoint_id != null ? var.vpc_endpoint_id : aws_vpc_endpoint.demo[0].id
  effective_vpc_id            = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
}
