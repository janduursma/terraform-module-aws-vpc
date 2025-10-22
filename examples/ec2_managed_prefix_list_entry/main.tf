module "vpc" {
  source = "../../"

  ec2_managed_prefix_list_entries = [{
    cidr           = var.cidr_block
    prefix_list_id = local.effective_prefix_list_id
    region         = var.region
  }]
}
