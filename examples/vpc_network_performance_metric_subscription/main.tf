module "vpc" {
  source = "../../"

  vpc_network_performance_metric_subscriptions = [{
    source      = "us-west-1"
    destination = "us-west-2"
  }]
}
