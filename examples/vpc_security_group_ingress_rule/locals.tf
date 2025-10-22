locals {
  effective_security_group_id = var.security_group_id != null ? var.security_group_id : aws_security_group.demo[0].id
}
