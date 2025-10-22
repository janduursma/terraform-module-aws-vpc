module "vpc" {
  source = "../../"

  vpc_peering_connections = [{
    peer_owner_id = local.effective_peer_owner_id
    peer_vpc_id   = local.effective_peer_vpc_id
    vpc_id        = local.effective_vpc_id
    auto_accept   = true
  }]
}

resource "aws_vpc" "peer" {
  count = var.peer_vpc_id != null ? 0 : 1

  cidr_block = "10.2.0.0/16"
}
