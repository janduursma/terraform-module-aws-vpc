module "vpc" {
  source = "../../"

  ec2_network_insights_paths = [{
    source   = local.effective_source
    protocol = "tcp"
  }]
}

resource "aws_network_interface" "demo" {
  count = var.path_source != null ? 0 : 1

  subnet_id = try(data.aws_subnets.default.ids[0], null)
}
