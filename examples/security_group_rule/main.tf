module "vpc" {
  source = "../../"

  security_group_rules = [{
    cidr_blocks       = ["10.0.1.0/24"]
    description       = "demo"
    from_port         = 0
    protocol          = "tcp"
    security_group_id = local.effective_security_group_id
    tags              = {}
    to_port           = 0
    type              = "ingress"
  }]
}

resource "aws_security_group" "demo" {
  count = var.security_group_id != null ? 0 : 1

  vpc_id = data.aws_vpc.default.id
}
