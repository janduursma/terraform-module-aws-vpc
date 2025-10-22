module "vpc" {
  source = "../../"

  network_interface_sg_attachments = [{
    security_group_id    = local.effective_security_group_id
    network_interface_id = local.effective_network_interface_id
  }]
}

resource "aws_network_interface" "demo" {
  count = var.network_interface_id != null ? 0 : 1

  subnet_id = local.effective_subnet_id
}

resource "aws_security_group" "demo" {
  count = var.security_group_id != null ? 0 : 1

  name   = "demo"
  vpc_id = data.aws_vpc.default.id
}
