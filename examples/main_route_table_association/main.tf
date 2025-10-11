module "vpc" {
  source = "../../"

  main_route_table_association = {
    route_table_id = local.effective_route_table_id
    vpc_id         = local.effective_vpc_id
  }
}

resource "aws_route_table" "demo" {
  vpc_id = local.effective_vpc_id
}
