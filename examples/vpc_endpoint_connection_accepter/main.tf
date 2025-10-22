module "vpc" {
  source = "../../"

  vpc_endpoint_connection_accepters = [{
    vpc_endpoint_service_id = local.effective_vpc_endpoint_service_id
    vpc_endpoint_id         = local.effective_vpc_endpoint_id
  }]
}

resource "aws_vpc_endpoint_service" "demo" {
  count = var.vpc_endpoint_service_id != null ? 0 : 1

  acceptance_required        = false
  network_load_balancer_arns = [aws_lb.demo.arn]
}

resource "aws_vpc_endpoint" "demo" {
  count = var.vpc_endpoint_id != null ? 0 : 1

  vpc_id       = data.aws_vpc.default.id
  service_name = "com.amazonaws.us-west-2.s3"
}

resource "aws_lb" "demo" {
  name                       = "demo"
  internal                   = true
  load_balancer_type         = "network"
  subnets                    = data.aws_subnets.default.ids
  enable_deletion_protection = false
}
