module "vpc" {
  source = "../../"

  network_interfaces = [{
    subnet_id = local.effective_subnet_id
  }]
}
