module "vpc" {
  source = "../../"

  default_security_group = {
    egress  = var.egress
    ingress = var.ingress
    region  = var.region
    tags    = var.tags
    vpc_id  = local.effective_vpc_id
  }
}
