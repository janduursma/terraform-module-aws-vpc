data "aws_ec2_network_insights_path" "default" {
  count = var.network_insights_path_id != null ? 0 : 1

  network_insights_path_id = aws_ec2_network_insights_path.demo[0].id
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

data "aws_vpc" "default" {
  default = true
}
