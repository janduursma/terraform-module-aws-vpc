locals {
  effective_vpc_id = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
}
