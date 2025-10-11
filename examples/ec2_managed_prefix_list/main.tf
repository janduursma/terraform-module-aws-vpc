module "vpc" {
  source = "../../"

  ec2_managed_prefix_list = {
    address_family = var.address_family
    entries        = var.entries
    max_entries    = var.max_entries
    name           = var.name
    region         = var.region
    tags           = var.tags
  }
}
