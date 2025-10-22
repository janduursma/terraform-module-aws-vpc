module "vpc" {
  source = "../../"

  route_table_associations = [{
    subnet_id      = local.effective_subnet_id
    route_table_id = aws_route_table.demo.id
  }]
}

resource "aws_route_table" "demo" {
  vpc_id = data.aws_vpc.default.id
}
