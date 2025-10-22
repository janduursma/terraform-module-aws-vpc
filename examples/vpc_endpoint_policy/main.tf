module "vpc" {
  source = "../../"

  vpc_endpoint_policies = [{
    policy          = file("${path.module}/policies/demo.json")
    vpc_endpoint_id = aws_vpc_endpoint.demo.id
  }]
}

resource "aws_vpc_endpoint" "demo" {
  vpc_id       = data.aws_vpc.default.id
  service_name = "com.amazonaws.us-west-2.s3"
}
