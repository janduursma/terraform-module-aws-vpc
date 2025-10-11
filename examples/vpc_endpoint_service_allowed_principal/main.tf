module "vpc" {
  source = "../../"

  vpc_endpoint_service_allowed_principals = [{
    vpc_endpoint_service_id = local.effective_vpc_endpoint_service_id
    principal_arn           = "ecs.application-autoscaling.amazonaws.com"
  }]
}

resource "aws_vpc_endpoint_service" "demo" {
  count = var.vpc_endpoint_service_id != null ? 0 : 1

  acceptance_required        = false
  gateway_load_balancer_arns = [aws_lb.demo[0].arn]
}

resource "aws_lb" "demo" {
  count = var.vpc_endpoint_service_id != null ? 0 : 1

  name                       = "demo"
  internal                   = true
  load_balancer_type         = "network"
  subnets                    = data.aws_subnets.default.ids
  enable_deletion_protection = false
}
