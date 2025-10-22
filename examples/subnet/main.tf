module "vpc" {
  source = "../../"

  subnets = [{
    availability_zone = var.availability_zone
    cidr_block        = var.cidr_block
    vpc_id            = local.effective_vpc_id
  }]
}
