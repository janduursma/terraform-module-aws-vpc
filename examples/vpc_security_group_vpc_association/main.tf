module "vpc" {
  source = "../../"

  vpc_security_group_vpc_associations = [{
    security_group_id = local.effective_security_group_id
    vpc_id            = local.effective_vpc_id
  }]
}

resource "aws_security_group" "demo" {
  count = var.security_group_id != null ? 0 : 1

  vpc_id = data.aws_vpc.default.id
}
