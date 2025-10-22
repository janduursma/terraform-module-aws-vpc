locals {
  effective_service_id = var.vpc_endpoint_service_id != null ? var.vpc_endpoint_service_id : aws_vpc_endpoint_service.demo[0].id
}
