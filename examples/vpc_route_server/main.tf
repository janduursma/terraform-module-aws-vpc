module "vpc" {
  source = "../../"

  vpc_route_servers = [{
    amazon_side_asn = 65534
  }]
}
