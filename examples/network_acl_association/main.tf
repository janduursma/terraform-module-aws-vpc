module "vpc" {
  source = "../../"

  network_acl_associations = [{
    network_acl_id = local.effective_network_acl_id
    subnet_id      = local.effective_subnet_id
  }]
}
