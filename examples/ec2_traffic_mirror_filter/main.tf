module "vpc" {
  source = "../../"

  ec2_traffic_mirror_filters = [{
    description      = var.description
    network_services = var.network_services
  }]
}
