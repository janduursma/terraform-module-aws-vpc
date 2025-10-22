module "vpc" {
  source = "../../"

  ec2_traffic_mirror_sessions = [{
    network_interface_id     = local.effective_network_interface_id
    session_number           = var.session_number
    traffic_mirror_filter_id = aws_ec2_traffic_mirror_filter.demo.id
    traffic_mirror_target_id = aws_ec2_traffic_mirror_target.demo.id
  }]
}

resource "aws_ec2_traffic_mirror_filter" "demo" {
  description      = "demo"
  network_services = ["amazon-dns"]
}

resource "aws_ec2_traffic_mirror_target" "demo" {
  network_interface_id = local.effective_network_interface_id
}

resource "aws_network_interface" "demo" {
  count = var.network_interface_id != null ? 0 : 1

  subnet_id = try(data.aws_subnets.default.ids[0], null)
}
