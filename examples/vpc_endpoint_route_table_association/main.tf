module "vpc" {
  source = "../../"

  vpc_endpoint_route_table_associations = [{
    route_table_id  = local.effective_route_table_id
    vpc_endpoint_id = local.effective_vpc_endpoint_id
  }]
}

resource "aws_route_table" "demo" {
  count = var.route_table_id != null ? 0 : 1

  vpc_id = local.effective_vpc_id
}

resource "aws_vpc_endpoint" "demo" {
  count = var.vpc_endpoint_id != null ? 0 : 1

  vpc_id       = local.effective_vpc_id
  service_name = "com.amazonaws.us-west-2.s3"
}
