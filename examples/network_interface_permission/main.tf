module "vpc" {
  source = "../../"

  network_interface_permissions = [{
    aws_account_id       = local.effective_account_id
    network_interface_id = local.effective_network_interface_id
    permission           = var.permission
  }]
}

resource "aws_network_interface" "demo" {
  count = var.network_interface_id != null ? 0 : 1

  subnet_id = local.effective_subnet_id
}
