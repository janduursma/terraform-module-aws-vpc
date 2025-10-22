module "vpc" {
  source = "../../"

  egress_only_internet_gateways = [{
    vpc_id = local.effective_vpc_id
  }]
}
