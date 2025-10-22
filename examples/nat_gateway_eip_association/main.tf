module "vpc" {
  source = "../../"

  nat_gateway_eip_associations = [{
    allocation_id  = local.effective_allocation_id
    nat_gateway_id = local.effective_nat_gateway_id
  }]
}

resource "aws_nat_gateway" "demo" {
  count = var.nat_gateway_id != null ? 0 : 1

  subnet_id = local.effective_subnet_id
}

resource "aws_eip" "demo" {
  count = var.allocation_id != null ? 0 : 1
}
