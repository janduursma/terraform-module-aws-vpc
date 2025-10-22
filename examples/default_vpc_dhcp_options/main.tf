module "vpc" {
  source = "../../"

  default_vpc_dhcp_options = {
    owner_id = local.effective_account_id
    region   = var.region
    tags     = var.tags
  }
}
