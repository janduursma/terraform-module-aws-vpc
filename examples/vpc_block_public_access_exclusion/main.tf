module "vpc" {
  source = "../../"

  vpc_block_public_access_exclusion = {
    internet_gateway_exclusion_mode = "allow-bidirectional",
    vpc_id                          = local.effective_vpc_id
  }
}
