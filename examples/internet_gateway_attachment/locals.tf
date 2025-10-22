locals {
  effective_internet_gateway_id = var.internet_gateway_id != null ? var.internet_gateway_id : data.aws_internet_gateway.default.internet_gateway_id
  effective_vpc_id              = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
}
