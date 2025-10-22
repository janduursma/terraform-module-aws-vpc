module "vpc" {
  source = "../../"

  vpc_endpoint_services = [{
    acceptance_required        = false
    network_load_balancer_arns = [aws_lb.demo.arn]
  }]
}

resource "aws_lb" "demo" {
  name                       = "demo"
  internal                   = true
  load_balancer_type         = "network"
  subnets                    = data.aws_subnets.default.ids
  enable_deletion_protection = false
}
