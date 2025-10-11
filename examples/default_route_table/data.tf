data "aws_route_table" "default" {
  subnet_id = data.aws_subnets.default.ids[0]
}

data "aws_subnets" "default" {}
