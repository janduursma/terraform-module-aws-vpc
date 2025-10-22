module "vpc" {
  source = "../../"

  ec2_traffic_mirror_filter_rules = [{
    traffic_mirror_filter_id = aws_ec2_traffic_mirror_filter.demo.id
    destination_cidr_block   = var.destination_cidr_block
    source_cidr_block        = var.source_cidr_block
    rule_number              = var.rule_number
    rule_action              = var.rule_action
    traffic_direction        = var.traffic_direction
  }]
}

resource "aws_ec2_traffic_mirror_filter" "demo" {
  description      = "demo"
  network_services = ["amazon-dns"]
}
