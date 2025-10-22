module "vpc" {
  source = "../../"

  vpc_route_server_propagations = [{
    route_server_id = local.effective_route_server_id
    route_table_id  = local.effective_route_table_id
  }]
}

resource "aws_vpc_route_server" "demo" {
  count = var.route_server_id != null ? 0 : 1

  amazon_side_asn = 65534
}

resource "aws_route_table" "demo" {
  count = var.route_table_id != null ? 0 : 1

  vpc_id = local.effective_vpc_id
}
