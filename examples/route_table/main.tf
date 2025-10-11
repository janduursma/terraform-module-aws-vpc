module "vpc" {
  source = "../../"

  route_tables = [{
    routes = [
      {
        cidr_block           = "10.0.1.0/24"
        network_interface_id = aws_network_interface.demo.id
      }
    ]
    vpc_id = data.aws_vpc.default.id
  }]
}

resource "aws_network_interface" "demo" {
  subnet_id = data.aws_subnets.default.ids[0]
}
