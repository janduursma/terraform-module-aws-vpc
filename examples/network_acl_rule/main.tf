module "vpc" {
  source = "../../"

  network_acl_rules = [{
    cidr_block     = var.cidr_block
    egress         = var.egress
    from_port      = var.from_port
    network_acl_id = local.effective_network_acl_id
    protocol       = var.protocol
    rule_action    = var.rule_action
    rule_number    = var.rule_number
    to_port        = var.to_port
  }]
}
