module "vpc" {
  source = "../../"

  vpc_ipv4_cidr_block_associations = [{
    cidr_block = "172.2.0.0/16"
    vpc_id     = local.effective_vpc_id
  }]
}
