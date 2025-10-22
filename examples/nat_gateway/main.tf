module "vpc" {
  source = "../../"

  nat_gateways = [{
    connectivity_type = "private"
    subnet_id         = local.effective_subnet_id
  }]
}
