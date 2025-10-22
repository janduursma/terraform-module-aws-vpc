module "vpc" {
  source = "../../"

  vpc_endpoint_security_group_associations = [{
    vpc_endpoint_id   = local.effective_vpc_endpoint_id
    security_group_id = local.effective_security_group_id
  }]
}

resource "aws_security_group" "demo" {
  name   = "demo"
  vpc_id = local.effective_vpc_id
}

resource "aws_vpc_endpoint" "demo" {
  count = var.vpc_endpoint_id != null ? 0 : 1

  vpc_id       = local.effective_vpc_id
  service_name = "com.amazonaws.us-west-2.s3"
}
