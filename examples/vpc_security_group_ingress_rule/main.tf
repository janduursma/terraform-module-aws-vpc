module "vpc" {
  source = "../../"

  vpc_security_group_ingress_rules = [{
    cidr_ipv4         = "10.0.1.0/24"
    from_port         = 0
    ip_protocol       = "tcp"
    security_group_id = local.effective_security_group_id
    tags              = {}
    to_port           = 0
  }]
}

resource "aws_security_group" "demo" {
  count = var.security_group_id != null ? 0 : 1

  vpc_id = data.aws_vpc.default.id
}
