module "vpc" {
  source = "../../"

  vpc_endpoint_connection_notifications = [{
    vpc_endpoint_service_id     = local.effective_vpc_endpoint_service_id
    connection_notification_arn = aws_sns_topic.demo.id
    connection_events           = ["Accept", "Reject"]
  }]
}

resource "aws_vpc_endpoint_service" "demo" {
  count = var.vpc_endpoint_service_id != null ? 0 : 1

  acceptance_required        = false
  network_load_balancer_arns = [aws_lb.demo.arn]
}

resource "aws_lb" "demo" {
  name                       = "demo"
  internal                   = true
  load_balancer_type         = "network"
  subnets                    = data.aws_subnets.default.ids
  enable_deletion_protection = false
}

resource "aws_sns_topic" "demo" {
  name   = "vpce-notification-topic"
  policy = data.aws_iam_policy_document.topic.json
}
