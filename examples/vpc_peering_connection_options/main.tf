module "vpc" {
  source = "../../"

  vpc_peering_connections_options = [{
    vpc_peering_connection_id = local.effective_vpc_peering_connection_id
    accepter = {
      allow_remote_vpc_dns_resolution = true
    }
  }]
}

resource "aws_vpc_peering_connection" "demo" {
  count = var.vpc_peering_connection_id != null ? 0 : 1

  peer_owner_id = local.effective_peer_owner_id
  peer_vpc_id   = local.effective_peer_vpc_id
  vpc_id        = local.effective_vpc_id
}

resource "aws_vpc" "peer" {
  count = var.peer_vpc_id != null ? 0 : 1

  cidr_block = "10.2.0.0/16"
}
