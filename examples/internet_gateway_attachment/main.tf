module "vpc" {
  source = "../../"

  internet_gateway_attachments = [{
    internet_gateway_id = local.effective_internet_gateway_id
    vpc_id              = local.effective_vpc_id
  }]
}
