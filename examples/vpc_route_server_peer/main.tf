module "vpc" {
  source = "../../"

  vpc_route_server_peers = [{
    route_server_endpoint_id = aws_vpc_route_server_endpoint.demo.route_server_endpoint_id
    peer_address             = "10.0.1.250"
    bgp_options = {
      peer_asn = 65200
    }
  }]
}

resource "aws_vpc_route_server" "demo" {
  amazon_side_asn = 65534
}

resource "aws_vpc_route_server_endpoint" "demo" {
  route_server_id = aws_vpc_route_server.demo.route_server_id
  subnet_id       = local.effective_subnet_id
}
