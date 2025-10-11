module "vpc" {
  source = "../../"

  routes = [{
    destination_ipv6_cidr_block = "::/0"
    egress_only_gateway_id      = aws_egress_only_internet_gateway.demo.id
    route_table_id              = local.effective_route_table_id
  }]
}

resource "aws_route_table" "demo" {
  count = var.route_table_id != null ? 0 : 1

  vpc_id = local.effective_vpc_id
}

resource "aws_egress_only_internet_gateway" "demo" {
  vpc_id = data.aws_vpc.default.id
}
