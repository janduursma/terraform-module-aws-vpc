module "vpc" {
  source = "../../"

  ec2_network_insights_analysis = [{
    network_insights_path_id = local.effective_network_insights_path_id
  }]
}

resource "aws_ec2_network_insights_path" "demo" {
  count = var.network_insights_path_id != null ? 0 : 1

  source   = aws_network_interface.demo[0].id
  protocol = "tcp"
}

resource "aws_network_interface" "demo" {
  count = var.network_insights_path_id != null ? 0 : 1

  subnet_id = try(data.aws_subnets.default.ids[0], null)
}
