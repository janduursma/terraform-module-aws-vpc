module "vpc" {
  source = "../../"

  vpc_route_server_endpoints = [{
    route_server_id = local.effective_route_server_id
    subnet_id       = local.effective_subnet_id
  }]
}

resource "aws_vpc_route_server" "demo" {
  count = var.route_server_id != null ? 0 : 1

  amazon_side_asn = 65534
}
