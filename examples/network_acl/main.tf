module "vpc" {
  source = "../../"

  network_acls = [{
    subnet_ids = local.effective_subnet_ids
    vpc_id     = local.effective_vpc_id
    egress     = var.egress
    ingress    = var.ingress
  }]
}
