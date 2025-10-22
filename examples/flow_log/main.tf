module "vpc" {
  source = "../../"

  flow_logs = [{
    traffic_type = "ALL"
    vpc_id       = local.effective_vpc_id
  }]
}
