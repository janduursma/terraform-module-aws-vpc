locals {
  effective_prefix_list_id = var.prefix_list_id != null ? var.prefix_list_id : data.aws_ec2_managed_prefix_list.default.id
}
