module "vpc" {
  source = "../../"

  vpc_endpoint_subnet_associations = [{
    vpc_endpoint_id = local.effective_vpc_endpoint_id
    subnet_id       = local.effective_subnet_id
  }]
}

resource "aws_vpc_endpoint" "demo" {
  count = var.vpc_endpoint_id != null ? 0 : 1

  vpc_id       = local.effective_vpc_id
  service_name = "com.amazonaws.us-west-2.s3"
}
