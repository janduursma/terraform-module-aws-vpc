module "vpc" {
  source = "../../"

  vpc_endpoints = [{
    service_name = "com.amazonaws.us-west-2.s3"
    vpc_id       = local.effective_vpc_id
  }]
}
