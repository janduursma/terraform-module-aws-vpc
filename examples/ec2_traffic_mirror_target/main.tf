module "vpc" {
  source = "../../"

  ec2_traffic_mirror_targets = [{
    network_interface_id = local.effective_network_interface_id
  }]
}

resource "aws_network_interface" "demo" {
  count = var.network_interface_id != null ? 0 : 1

  subnet_id = try(data.aws_subnets.default.ids[0], null)
}
