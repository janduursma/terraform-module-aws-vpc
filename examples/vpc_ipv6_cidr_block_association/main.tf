module "vpc" {
  source = "../../"

  vpc_ipv6_cidr_block_associations = [{
    assign_generated_ipv6_cidr_block = true
    vpc_id                           = local.effective_vpc_id
  }]
}
