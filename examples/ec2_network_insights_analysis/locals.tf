locals {
  effective_network_insights_path_id = var.network_insights_path_id != null ? var.network_insights_path_id : data.aws_ec2_network_insights_path.default[0].network_insights_path_id
}

