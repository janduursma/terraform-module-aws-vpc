module "vpc" {
  source = "../../"

  default_network_acl = {
    default_network_acl_id = local.effective_network_acl_id
    egress                 = var.egress
    ingress                = var.ingress
    subnet_ids             = local.effective_subnet_ids
    tags                   = var.tags
  }
}
