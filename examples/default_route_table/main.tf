module "vpc" {
  source = "../../"

  default_route_table = {
    default_route_table_id = local.effective_route_table_id
    region                 = var.region
    routes                 = var.routes
    tags                   = var.tags
  }
}
