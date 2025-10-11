module "vpc" {
  source = "../../"

  ec2_subnet_cidr_reservations = [{
    cidr_block       = var.cidr_block
    reservation_type = var.reservation_type
    subnet_id        = local.effective_subnet_id
  }]
}
