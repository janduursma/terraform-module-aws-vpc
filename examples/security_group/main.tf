module "vpc" {
  source = "../../"

  security_groups = [{
    name   = var.name
    vpc_id = local.effective_vpc_id
  }]
}
