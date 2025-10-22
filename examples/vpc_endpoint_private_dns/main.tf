module "vpc" {
  source = "../../"

  vpc_endpoint_private_dns = [{
    private_dns_enabled = true
    vpc_endpoint_id     = aws_vpc_endpoint.demo[0].id
  }]
}

resource "aws_vpc_endpoint" "demo" {
  count = var.vpc_endpoint_id != null ? 0 : 1

  vpc_id       = local.effective_vpc_id
  service_name = "com.amazonaws.us-west-2.s3"
}
