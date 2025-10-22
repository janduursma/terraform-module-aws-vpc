locals {
  effective_peer_owner_id = var.peer_owner_id != null ? var.peer_owner_id : data.aws_caller_identity.current.account_id
  effective_peer_vpc_id   = var.peer_vpc_id != null ? var.peer_vpc_id : aws_vpc.peer[0].id
  effective_vpc_id        = var.vpc_id != null ? var.vpc_id : data.aws_vpc.default.id
}
