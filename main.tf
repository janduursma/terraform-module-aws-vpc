resource "aws_default_network_acl" "this" {
  count = length(keys(var.default_network_acl)) > 0 ? 1 : 0

  default_network_acl_id = var.default_network_acl["default_network_acl_id"]
  region                 = try(var.default_network_acl["region"], null)
  subnet_ids             = try(var.default_network_acl["subnet_ids"], null)
  tags                   = merge(try(var.tags, {}), try(var.default_network_acl["tags"], {}))

  dynamic "egress" {
    for_each = try(var.default_network_acl["egress"], [])

    content {
      action          = egress.value["action"]
      cidr_block      = try(egress.value["cidr_block"], null)
      from_port       = egress.value["from_port"]
      icmp_code       = try(egress.value["icmp_code"], null)
      icmp_type       = try(egress.value["icmp_type"], null)
      ipv6_cidr_block = try(egress.value["ipv6_cidr_block"], null)
      protocol        = egress.value["protocol"]
      rule_no         = egress.value["rule_no"]
      to_port         = egress.value["to_port"]
    }
  }

  dynamic "ingress" {
    for_each = try(var.default_network_acl["ingress"], [])

    content {
      action          = ingress.value["action"]
      cidr_block      = try(ingress.value["cidr_block"], null)
      from_port       = ingress.value["from_port"]
      icmp_code       = try(ingress.value["icmp_code"], null)
      icmp_type       = try(ingress.value["icmp_type"], null)
      ipv6_cidr_block = try(ingress.value["ipv6_cidr_block"], null)
      protocol        = ingress.value["protocol"]
      rule_no         = ingress.value["rule_no"]
      to_port         = ingress.value["to_port"]
    }
  }
}

resource "aws_default_route_table" "this" {
  count = length(keys(var.default_route_table)) > 0 ? 1 : 0

  default_route_table_id = var.default_route_table["default_route_table_id"]
  propagating_vgws       = try(var.default_route_table["propagating_vgws"], null)
  region                 = try(var.default_route_table["region"], null)
  tags                   = merge(try(var.tags, {}), try(var.default_route_table["tags"], {}))

  dynamic "route" {
    for_each = try(var.default_route_table["routes"], [])

    content {
      cidr_block                 = route.value["cidr_block"]
      core_network_arn           = try(route.value["core_network_arn"], null)
      destination_prefix_list_id = try(route.value["destination_prefix_list_id"], null)
      egress_only_gateway_id     = try(route.value["egress_only_gateway_id"], null)
      gateway_id                 = try(route.value["gateway_id"], null)
      instance_id                = try(route.value["instance_id"], null)
      ipv6_cidr_block            = try(route.value["ipv6_cidr_block"], null)
      nat_gateway_id             = try(route.value["nat_gateway_id"], null)
      network_interface_id       = try(route.value["network_interface_id"], null)
      transit_gateway_id         = try(route.value["transit_gateway_id"], null)
      vpc_endpoint_id            = try(route.value["vpc_endpoint_id"], null)
      vpc_peering_connection_id  = try(route.value["vpc_peering_connection_id"], null)
    }
  }
}

resource "aws_default_security_group" "this" {
  count = length(keys(var.default_security_group)) > 0 ? 1 : 0

  region = try(var.default_security_group["region"], null)
  tags   = merge(try(var.tags, {}), try(var.default_security_group["tags"], {}))
  vpc_id = try(var.default_security_group["vpc_id"], null)

  dynamic "egress" {
    for_each = try(var.default_security_group["egress"], [])

    content {
      cidr_blocks      = try(egress.value["cidr_blocks"], null)
      description      = try(egress.value["description"], null)
      from_port        = egress.value["from_port"]
      ipv6_cidr_blocks = try(egress.value["ipv6_cidr_blocks"], null)
      prefix_list_ids  = try(egress.value["prefix_list_ids"], null)
      protocol         = egress.value["protocol"]
      security_groups  = try(egress.value["security_groups"], null)
      self             = try(egress.value["self"], null)
      to_port          = egress.value["to_port"]
    }
  }

  dynamic "ingress" {
    for_each = try(var.default_security_group["ingress"], [])
    content {
      cidr_blocks      = try(ingress.value["cidr_blocks"], null)
      description      = try(ingress.value["description"], null)
      from_port        = ingress.value["from_port"]
      ipv6_cidr_blocks = try(ingress.value["ipv6_cidr_blocks"], null)
      prefix_list_ids  = try(ingress.value["prefix_list_ids"], null)
      protocol         = ingress.value["protocol"]
      security_groups  = try(ingress.value["security_groups"], null)
      self             = try(ingress.value["self"], null)
      to_port          = ingress.value["to_port"]
    }
  }
}

resource "aws_default_subnet" "this" {
  count = length(keys(var.default_subnet)) > 0 ? 1 : 0

  assign_ipv6_address_on_creation                = try(var.default_subnet["assign_ipv6_address_on_creation"], null)
  availability_zone                              = var.default_subnet["availability_zone"]
  enable_dns64                                   = try(var.default_subnet["enable_dns64"], null)
  enable_resource_name_dns_aaaa_record_on_launch = try(var.default_subnet["enable_resource_name_dns_aaaa_record_on_launch"], null)
  enable_resource_name_dns_a_record_on_launch    = try(var.default_subnet["enable_resource_name_dns_a_record_on_launch"], null)
  ipv6_cidr_block                                = try(var.default_subnet["ipv6_cidr_block"], null)
  ipv6_native                                    = try(var.default_subnet["ipv6_native"], null)
  map_public_ip_on_launch                        = try(var.default_subnet["map_public_ip_on_launch"], null)
  private_dns_hostname_type_on_launch            = try(var.default_subnet["private_dns_hostname_type_on_launch"], null)
  tags                                           = merge(try(var.tags, {}), try(var.default_subnet["tags"], {}))
}

resource "aws_default_vpc" "this" {
  count = length(keys(var.default_vpc)) > 0 ? 1 : 0

  assign_generated_ipv6_cidr_block     = try(var.default_vpc["assign_generated_ipv6_cidr_block"], null)
  enable_dns_hostnames                 = try(var.default_vpc["enable_dns_hostnames"], null)
  enable_dns_support                   = try(var.default_vpc["enable_dns_support"], null)
  enable_network_address_usage_metrics = try(var.default_vpc["enable_network_address_usage_metrics"], null)
  ipv6_cidr_block                      = try(var.default_vpc["ipv6_cidr_block"], null)
  ipv6_cidr_block_network_border_group = try(var.default_vpc["ipv6_cidr_block_network_border_group"], null)
  ipv6_ipam_pool_id                    = try(var.default_vpc["ipv6_ipam_pool_id"], null)
  ipv6_netmask_length                  = try(var.default_vpc["ipv6_netmask_length"], null)
  region                               = try(var.default_vpc["region"], null)
  tags                                 = merge(try(var.tags, {}), try(var.default_vpc["tags"], {}))
}

resource "aws_default_vpc_dhcp_options" "this" {
  count = length(keys(var.default_vpc_dhcp_options)) > 0 ? 1 : 0

  owner_id = try(var.default_vpc_dhcp_options["owner_id"], null)
  tags     = merge(try(var.tags, {}), try(var.default_vpc_dhcp_options["tags"], {}))
}

resource "aws_ec2_managed_prefix_list" "this" {
  count = length(keys(var.ec2_managed_prefix_list)) > 0 ? 1 : 0

  address_family = var.ec2_managed_prefix_list["address_family"]
  max_entries    = var.ec2_managed_prefix_list["max_entries"]
  name           = var.ec2_managed_prefix_list["name"]
  region         = try(var.ec2_managed_prefix_list["region"], null)
  tags           = merge(try(var.tags, {}), try(var.ec2_managed_prefix_list["tags"], {}))

  dynamic "entry" {
    for_each = try(var.ec2_managed_prefix_list["entries"], [])

    content {
      cidr        = entry.value["cidr"]
      description = try(entry.value["description"], null)
    }
  }
}

resource "aws_ec2_managed_prefix_list_entry" "this" {
  count = length(var.ec2_managed_prefix_list_entries)

  cidr           = var.ec2_managed_prefix_list_entries[count.index]["cidr"]
  description    = try(var.ec2_managed_prefix_list_entries[count.index]["description"], null)
  prefix_list_id = var.ec2_managed_prefix_list_entries[count.index]["prefix_list_id"]
  region         = try(var.ec2_managed_prefix_list_entries[count.index]["region"], null)
}

resource "aws_ec2_network_insights_analysis" "this" {
  count = length(var.ec2_network_insights_analysis)

  filter_in_arns           = try(var.ec2_network_insights_analysis[count.index]["filter_in_arns"], null)
  network_insights_path_id = var.ec2_network_insights_analysis[count.index]["network_insights_path_id"]
  region                   = try(var.ec2_network_insights_analysis[count.index]["region"], null)
  tags                     = merge(try(var.tags, {}), try(var.ec2_network_insights_analysis[count.index]["tags"], {}))
  wait_for_completion      = try(var.ec2_network_insights_analysis[count.index]["wait_for_completion"], null)
}

resource "aws_ec2_network_insights_path" "this" {
  count = length(var.ec2_network_insights_paths)

  destination      = try(var.ec2_network_insights_paths[count.index]["destination"], null)
  destination_ip   = try(var.ec2_network_insights_paths[count.index]["destination_ip"], null)
  destination_port = try(var.ec2_network_insights_paths[count.index]["destination_port"], null)
  protocol         = var.ec2_network_insights_paths[count.index]["protocol"]
  region           = try(var.ec2_network_insights_paths[count.index]["region"], null)
  source           = var.ec2_network_insights_paths[count.index]["source"]
  source_ip        = try(var.ec2_network_insights_paths[count.index]["source_ip"], null)
  tags             = merge(try(var.tags, {}), try(var.ec2_network_insights_paths[count.index]["tags"], {}))

  dynamic "filter_at_destination" {
    for_each = length(keys(try(var.ec2_network_insights_paths[count.index]["filter_at_destination"], {}))) > 0 ? [var.ec2_network_insights_paths[count.index]["filter_at_destination"]] : []

    content {
      destination_address = try(filter_at_destination.value["destination_address"], null)
      source_address      = try(filter_at_destination.value["source_address"], null)


      dynamic "destination_port_range" {
        for_each = length(keys(try(filter_at_destination.value["destination_port_range"], {}))) > 0 ? [filter_at_destination.value["destination_port_range"]] : []

        content {
          from_port = try(destination_port_range.value["from_port"], null)
          to_port   = try(destination_port_range.value["to_port"], null)
        }
      }

      dynamic "source_port_range" {
        for_each = length(keys(try(filter_at_destination.value["source_port_range"], {}))) > 0 ? [filter_at_destination.value["source_port_range"]] : []

        content {
          from_port = try(source_port_range.value["from_port"], null)
          to_port   = try(source_port_range.value["to_port"], null)
        }
      }
    }
  }

  dynamic "filter_at_source" {
    for_each = length(keys(try(var.ec2_network_insights_paths[count.index]["filter_at_source"], {}))) > 0 ? [var.ec2_network_insights_paths[count.index]["filter_at_source"]] : []

    content {
      destination_address = try(filter_at_source.value["destination_address"], null)
      source_address      = try(filter_at_source.value["source_address"], null)

      dynamic "destination_port_range" {
        for_each = length(keys(try(filter_at_source.value["destination_port_range"], {}))) > 0 ? [filter_at_source.value["destination_port_range"]] : []

        content {
          from_port = try(destination_port_range.value["from_port"], null)
          to_port   = try(destination_port_range.value["to_port"], null)
        }
      }

      dynamic "source_port_range" {
        for_each = length(keys(try(filter_at_source.value["source_port_range"], {}))) > 0 ? [filter_at_source.value["source_port_range"]] : []

        content {
          from_port = try(source_port_range.value["from_port"], null)
          to_port   = try(source_port_range.value["to_port"], null)
        }
      }
    }
  }
}

resource "aws_ec2_subnet_cidr_reservation" "this" {
  count = length(var.ec2_subnet_cidr_reservations)

  cidr_block       = var.ec2_subnet_cidr_reservations[count.index]["cidr_block"]
  description      = try(var.ec2_subnet_cidr_reservations[count.index]["description"], null)
  region           = try(var.ec2_subnet_cidr_reservations[count.index]["region"], null)
  reservation_type = var.ec2_subnet_cidr_reservations[count.index]["reservation_type"]
  subnet_id        = var.ec2_subnet_cidr_reservations[count.index]["subnet_id"]
}

resource "aws_ec2_traffic_mirror_filter" "this" {
  count = length(var.ec2_traffic_mirror_filters)

  description      = try(var.ec2_traffic_mirror_filters[count.index]["description"], null)
  network_services = try(var.ec2_traffic_mirror_filters[count.index]["network_services"], null)
  region           = try(var.ec2_traffic_mirror_filters[count.index]["region"], null)
  tags             = merge(try(var.tags, {}), try(var.ec2_network_insights_paths[count.index]["tags"], {}))
}

resource "aws_ec2_traffic_mirror_filter_rule" "this" {
  count = length(var.ec2_traffic_mirror_filter_rules)

  description              = try(var.ec2_traffic_mirror_filter_rules[count.index]["description"], null)
  destination_cidr_block   = var.ec2_traffic_mirror_filter_rules[count.index]["destination_cidr_block"]
  protocol                 = try(var.ec2_traffic_mirror_filter_rules[count.index]["protocol"], null)
  rule_action              = var.ec2_traffic_mirror_filter_rules[count.index]["rule_action"]
  rule_number              = var.ec2_traffic_mirror_filter_rules[count.index]["rule_number"]
  source_cidr_block        = var.ec2_traffic_mirror_filter_rules[count.index]["source_cidr_block"]
  traffic_direction        = var.ec2_traffic_mirror_filter_rules[count.index]["traffic_direction"]
  traffic_mirror_filter_id = var.ec2_traffic_mirror_filter_rules[count.index]["traffic_mirror_filter_id"]

  dynamic "destination_port_range" {
    for_each = length(try(var.ec2_traffic_mirror_filter_rules[count.index]["destination_port_range"], [])) > 0 ? [var.ec2_traffic_mirror_filter_rules[count.index]["destination_port_range"]] : []

    content {
      from_port = try(destination_port_range.value["from_port"], null)
      to_port   = try(destination_port_range.value["to_port"], null)
    }
  }

  dynamic "source_port_range" {
    for_each = length(try(var.ec2_traffic_mirror_filter_rules[count.index]["source_port_range"], [])) > 0 ? [var.ec2_traffic_mirror_filter_rules[count.index]["source_port_range"]] : []

    content {
      from_port = try(source_port_range.value["from_port"], null)
      to_port   = try(source_port_range.value["to_port"], null)
    }
  }
}

resource "aws_ec2_traffic_mirror_session" "this" {
  count = length(var.ec2_traffic_mirror_sessions)

  description              = try(var.ec2_traffic_mirror_sessions[count.index]["description"], null)
  network_interface_id     = var.ec2_traffic_mirror_sessions[count.index]["network_interface_id"]
  packet_length            = try(var.ec2_traffic_mirror_sessions[count.index]["packet_length"], null)
  region                   = try(var.ec2_traffic_mirror_sessions[count.index]["region"], null)
  session_number           = var.ec2_traffic_mirror_sessions[count.index]["session_number"]
  tags                     = merge(try(var.tags, {}), try(var.ec2_traffic_mirror_sessions[count.index]["tags"], {}))
  traffic_mirror_filter_id = var.ec2_traffic_mirror_sessions[count.index]["traffic_mirror_filter_id"]
  traffic_mirror_target_id = var.ec2_traffic_mirror_sessions[count.index]["traffic_mirror_target_id"]
  virtual_network_id       = try(var.ec2_traffic_mirror_sessions[count.index]["virtual_network_id"], null)
}

resource "aws_ec2_traffic_mirror_target" "this" {
  count = length(var.ec2_traffic_mirror_targets)

  description                       = try(var.ec2_traffic_mirror_targets[count.index]["description"], null)
  gateway_load_balancer_endpoint_id = try(var.ec2_traffic_mirror_targets[count.index]["gateway_load_balancer_endpoint_id"], null)
  network_interface_id              = try(var.ec2_traffic_mirror_targets[count.index]["network_interface_id"], null)
  network_load_balancer_arn         = try(var.ec2_traffic_mirror_targets[count.index]["network_load_balancer_arn"], null)
  region                            = try(var.ec2_traffic_mirror_targets[count.index]["region"], null)
  tags                              = merge(try(var.tags, {}), try(var.ec2_traffic_mirror_targets[count.index]["tags"], {}))
}

resource "aws_egress_only_internet_gateway" "this" {
  count = length(var.egress_only_internet_gateways)

  region = try(var.egress_only_internet_gateways[count.index]["region"], null)
  tags   = merge(try(var.tags, {}), try(var.egress_only_internet_gateways[count.index]["tags"], {}))
  vpc_id = var.egress_only_internet_gateways[count.index]["vpc_id"]
}

resource "aws_flow_log" "this" {
  count = length(var.flow_logs)

  deliver_cross_account_role    = try(var.flow_logs[count.index]["deliver_cross_account_role"], null)
  eni_id                        = try(var.flow_logs[count.index]["eni_id"], null)
  iam_role_arn                  = try(var.flow_logs[count.index]["iam_role_arn"], null)
  log_destination               = try(var.flow_logs[count.index]["log_destination"], null)
  log_destination_type          = try(var.flow_logs[count.index]["log_destination_type"], null)
  log_format                    = try(var.flow_logs[count.index]["log_format"], null)
  max_aggregation_interval      = try(var.flow_logs[count.index]["max_aggregation_interval"], null)
  subnet_id                     = try(var.flow_logs[count.index]["subnet_id"], null)
  tags                          = merge(try(var.tags, {}), try(var.flow_logs[count.index]["tags"], {}))
  traffic_type                  = var.flow_logs[count.index]["traffic_type"]
  transit_gateway_attachment_id = try(var.flow_logs[count.index]["transit_gateway_attachment_id"], null)
  transit_gateway_id            = try(var.flow_logs[count.index]["transit_gateway_id"], null)
  vpc_id                        = try(var.flow_logs[count.index]["vpc_id"], null)

  dynamic "destination_options" {
    for_each = length(try(var.flow_logs[count.index]["destination_options"], [])) > 0 ? [var.flow_logs[count.index]["destination_options"]] : []

    content {
      file_format                = try(destination_options.value["file_format"], null)
      hive_compatible_partitions = try(destination_options.value["hive_compatible_partitions"], null)
      per_hour_partition         = try(destination_options.value["per_hour_partition"], null)
    }
  }
}

resource "aws_internet_gateway" "this" {
  count = length(var.internet_gateways)

  region = try(var.internet_gateways[count.index]["region"], null)
  tags   = merge(try(var.tags, {}), try(var.internet_gateways[count.index]["tags"], {}))
  vpc_id = try(var.internet_gateways[count.index]["vpc_id"], null)
}

resource "aws_internet_gateway_attachment" "this" {
  count = length(var.internet_gateway_attachments)

  region              = try(var.internet_gateways[count.index]["region"], null)
  internet_gateway_id = var.internet_gateway_attachments[count.index]["internet_gateway_id"]
  vpc_id              = var.internet_gateway_attachments[count.index]["vpc_id"]
}

resource "aws_main_route_table_association" "this" {
  count = length(keys(var.main_route_table_association)) > 0 ? 1 : 0

  region         = try(var.main_route_table_association["region"], null)
  route_table_id = var.main_route_table_association["route_table_id"]
  vpc_id         = var.main_route_table_association["vpc_id"]
}

resource "aws_nat_gateway" "this" {
  count = length(var.nat_gateways)

  allocation_id                      = try(var.nat_gateways[count.index]["allocation_id"], null)
  connectivity_type                  = try(var.nat_gateways[count.index]["connectivity_type"], null)
  private_ip                         = try(var.nat_gateways[count.index]["private_ip"], null)
  region                             = try(var.nat_gateways[count.index]["region"], null)
  secondary_allocation_ids           = try(var.nat_gateways[count.index]["secondary_allocation_ids"], null)
  secondary_private_ip_address_count = try(var.nat_gateways[count.index]["secondary_private_ip_address_count"], null)
  secondary_private_ip_addresses     = try(var.nat_gateways[count.index]["secondary_private_ip_addresses"], null)
  subnet_id                          = var.nat_gateways[count.index]["subnet_id"]
  tags                               = merge(try(var.tags, {}), try(var.nat_gateways[count.index]["tags"], {}))
}

resource "aws_nat_gateway_eip_association" "this" {
  count = length(var.nat_gateway_eip_associations)

  allocation_id  = var.nat_gateway_eip_associations[count.index]["allocation_id"]
  nat_gateway_id = var.nat_gateway_eip_associations[count.index]["nat_gateway_id"]
  region         = try(var.nat_gateway_eip_associations[count.index]["region"], null)
}

resource "aws_network_acl" "this" {
  count = length(var.network_acls)

  region     = try(var.network_acls[count.index]["region"], null)
  subnet_ids = try(var.network_acls[count.index]["subnet_ids"], null)
  tags       = merge(try(var.tags, {}), try(var.network_acls[count.index]["tags"], {}))
  vpc_id     = var.network_acls[count.index]["vpc_id"]

  dynamic "egress" {
    for_each = length(try(var.network_acls[count.index]["egress"], [])) > 0 ? var.network_acls[count.index]["egress"] : []

    content {
      action          = egress.value["action"]
      cidr_block      = try(egress.value["cidr_block"], null)
      from_port       = egress.value["from_port"]
      icmp_code       = try(egress.value["icmp_code"], null)
      icmp_type       = try(egress.value["icmp_type"], null)
      ipv6_cidr_block = try(egress.value["ipv6_cidr_block"], null)
      protocol        = egress.value["protocol"]
      rule_no         = egress.value["rule_no"]
      to_port         = egress.value["to_port"]
    }
  }

  dynamic "ingress" {
    for_each = length(try(var.network_acls[count.index]["ingress"], [])) > 0 ? var.network_acls[count.index]["ingress"] : []

    content {
      action          = ingress.value["action"]
      cidr_block      = try(ingress.value["cidr_block"], null)
      from_port       = ingress.value["from_port"]
      icmp_code       = try(ingress.value["icmp_code"], null)
      icmp_type       = try(ingress.value["icmp_type"], null)
      ipv6_cidr_block = try(ingress.value["ipv6_cidr_block"], null)
      protocol        = ingress.value["protocol"]
      rule_no         = ingress.value["rule_no"]
      to_port         = ingress.value["to_port"]
    }
  }
}

resource "aws_network_acl_association" "this" {
  count = length(var.network_acl_associations)

  network_acl_id = var.network_acl_associations[count.index]["network_acl_id"]
  region         = try(var.network_acl_associations[count.index]["region"], null)
  subnet_id      = var.network_acl_associations[count.index]["subnet_id"]
}

resource "aws_network_acl_rule" "this" {
  count = length(var.network_acl_rules)

  cidr_block      = try(var.network_acl_rules[count.index]["cidr_block"], null)
  egress          = try(var.network_acl_rules[count.index]["egress"], null)
  from_port       = try(var.network_acl_rules[count.index]["from_port"], null)
  icmp_code       = try(var.network_acl_rules[count.index]["icmp_code"], null)
  icmp_type       = try(var.network_acl_rules[count.index]["icmp_type"], null)
  ipv6_cidr_block = try(var.network_acl_rules[count.index]["ipv6_cidr_block"], null)
  network_acl_id  = var.network_acl_rules[count.index]["network_acl_id"]
  protocol        = var.network_acl_rules[count.index]["protocol"]
  region          = try(var.network_acl_rules[count.index]["region"], null)
  rule_action     = var.network_acl_rules[count.index]["rule_action"]
  rule_number     = var.network_acl_rules[count.index]["rule_number"]
  to_port         = try(var.network_acl_rules[count.index]["to_port"], null)
}

resource "aws_network_interface" "this" {
  count = length(var.network_interfaces)

  description               = try(var.network_interfaces[count.index]["description"], null)
  enable_primary_ipv6       = try(var.network_interfaces[count.index]["enable_primary_ipv6"], null)
  interface_type            = try(var.network_interfaces[count.index]["interface_type"], null)
  ipv4_prefix_count         = try(var.network_interfaces[count.index]["ipv4_prefix_count"], null)
  ipv4_prefixes             = try(var.network_interfaces[count.index]["ipv4_prefixes"], null)
  ipv6_address_count        = try(var.network_interfaces[count.index]["ipv6_address_count"], null)
  ipv6_address_list         = try(var.network_interfaces[count.index]["ipv6_address_list"], null)
  ipv6_address_list_enabled = try(var.network_interfaces[count.index]["ipv6_address_list_enabled"], null)
  ipv6_addresses            = try(var.network_interfaces[count.index]["ipv6_addresses"], null)
  ipv6_prefix_count         = try(var.network_interfaces[count.index]["ipv6_prefix_count"], null)
  ipv6_prefixes             = try(var.network_interfaces[count.index]["ipv6_prefixes"], null)
  private_ip_list           = try(var.network_interfaces[count.index]["private_ip_list"], null)
  private_ip_list_enabled   = try(var.network_interfaces[count.index]["private_ip_list_enabled"], null)
  private_ips               = try(var.network_interfaces[count.index]["private_ips"], null)
  private_ips_count         = try(var.network_interfaces[count.index]["private_ips_count"], null)
  region                    = try(var.network_interfaces[count.index]["region"], null)
  security_groups           = try(var.network_interfaces[count.index]["security_groups"], null)
  source_dest_check         = try(var.network_interfaces[count.index]["source_dest_check"], null)
  subnet_id                 = var.network_interfaces[count.index]["subnet_id"]
  tags                      = merge(try(var.tags, {}), try(var.network_interfaces[count.index]["tags"], {}))

  dynamic "attachment" {
    for_each = try([var.network_interfaces[count.index]["attachment"]], [])

    content {
      device_index       = attachment.value["device_index"]
      instance           = attachment.value["instance"]
      network_card_index = try(attachment.value["network_card_index"], null)
    }
  }
}

resource "aws_network_interface_attachment" "this" {
  count = length(var.network_interface_attachments)

  device_index         = var.network_interface_attachments[count.index]["device_index"]
  instance_id          = var.network_interface_attachments[count.index]["instance_id"]
  network_interface_id = var.network_interface_attachments[count.index]["network_interface_id"]
  network_card_index   = try(var.network_interface_attachments[count.index]["network_card_index"], null)
  region               = try(var.network_interface_attachments[count.index]["region"], null)
}

resource "aws_network_interface_permission" "this" {
  count = length(var.network_interface_permissions)

  aws_account_id       = var.network_interface_permissions[count.index]["aws_account_id"]
  network_interface_id = var.network_interface_permissions[count.index]["network_interface_id"]
  permission           = var.network_interface_permissions[count.index]["permission"]
  region               = try(var.network_interface_permissions[count.index]["region"], null)
}

resource "aws_network_interface_sg_attachment" "this" {
  count = length(var.network_interface_sg_attachments)

  network_interface_id = var.network_interface_sg_attachments[count.index]["network_interface_id"]
  region               = try(var.network_interface_permissions[count.index]["region"], null)
  security_group_id    = var.network_interface_sg_attachments[count.index]["security_group_id"]
}

resource "aws_route" "this" {
  count = length(var.routes)

  carrier_gateway_id          = try(var.routes[count.index]["carrier_gateway_id"], null)
  core_network_arn            = try(var.routes[count.index]["core_network_arn"], null)
  destination_cidr_block      = try(var.routes[count.index]["destination_cidr_block"], null)
  destination_ipv6_cidr_block = try(var.routes[count.index]["destination_ipv6_cidr_block"], null)
  destination_prefix_list_id  = try(var.routes[count.index]["destination_prefix_list_id"], null)
  egress_only_gateway_id      = try(var.routes[count.index]["egress_only_gateway_id"], null)
  gateway_id                  = try(var.routes[count.index]["gateway_id"], null)
  local_gateway_id            = try(var.routes[count.index]["local_gateway_id"], null)
  nat_gateway_id              = try(var.routes[count.index]["nat_gateway_id"], null)
  network_interface_id        = try(var.routes[count.index]["network_interface_id"], null)
  region                      = try(var.routes[count.index]["region"], null)
  route_table_id              = var.routes[count.index]["route_table_id"]
  transit_gateway_id          = try(var.routes[count.index]["transit_gateway_id"], null)
  vpc_endpoint_id             = try(var.routes[count.index]["vpc_endpoint_id"], null)
  vpc_peering_connection_id   = try(var.routes[count.index]["vpc_peering_connection_id"], null)
}

resource "aws_route_table" "this" {
  count = length(var.route_tables)

  propagating_vgws = try(var.route_tables[count.index]["propagating_vgws"], null)
  region           = try(var.route_tables[count.index]["region"], null)
  tags             = merge(try(var.tags, {}), try(var.route_tables[count.index]["tags"], {}))
  vpc_id           = var.route_tables[count.index]["vpc_id"]

  dynamic "route" {
    for_each = try(var.route_tables[count.index]["routes"], [])

    content {
      carrier_gateway_id         = try(route.value["carrier_gateway_id"], null)
      cidr_block                 = route.value["cidr_block"]
      core_network_arn           = try(route.value["core_network_arn"], null)
      destination_prefix_list_id = try(route.value["destination_prefix_list_id"], null)
      egress_only_gateway_id     = try(route.value["egress_only_gateway_id"], null)
      gateway_id                 = try(route.value["gateway_id"], null)
      ipv6_cidr_block            = try(route.value["ipv6_cidr_block"], null)
      local_gateway_id           = try(route.value["local_gateway_id"], null)
      nat_gateway_id             = try(route.value["nat_gateway_id"], null)
      network_interface_id       = try(route.value["network_interface_id"], null)
      transit_gateway_id         = try(route.value["transit_gateway_id"], null)
      vpc_endpoint_id            = try(route.value["vpc_endpoint_id"], null)
      vpc_peering_connection_id  = try(route.value["vpc_peering_connection_id"], null)
    }
  }
}

resource "aws_route_table_association" "this" {
  count = length(var.route_table_associations)

  gateway_id     = try(var.route_table_associations[count.index]["gateway_id"], null)
  region         = try(var.route_table_associations[count.index]["region"], null)
  route_table_id = var.route_table_associations[count.index]["route_table_id"]
  subnet_id      = try(var.route_table_associations[count.index]["subnet_id"], null)
}

resource "aws_security_group" "this" {
  count = length(var.security_groups)

  description            = try(var.security_groups[count.index]["description"], null)
  name                   = try(var.security_groups[count.index]["name"], null)
  name_prefix            = try(var.security_groups[count.index]["name_prefix"], null)
  revoke_rules_on_delete = try(var.security_groups[count.index]["revoke_rules_on_delete"], null)
  tags                   = merge(try(var.tags, {}), try(var.security_groups[count.index]["tags"], {}))
  vpc_id                 = var.security_groups[count.index]["vpc_id"]

  dynamic "ingress" {
    for_each = try(var.security_groups[count.index]["ingress_rules"], [])

    content {
      cidr_blocks      = try(ingress.value["cidr_blocks"], null)
      description      = try(ingress.value["description"], null)
      from_port        = ingress.value["from_port"]
      ipv6_cidr_blocks = try(ingress.value["ipv6_cidr_blocks"], null)
      prefix_list_ids  = try(ingress.value["prefix_list_ids"], null)
      protocol         = ingress.value["protocol"]
      security_groups  = try(ingress.value["security_groups"], null)
      self             = try(ingress.value["self"], null)
      to_port          = ingress.value["to_port"]
    }
  }

  dynamic "egress" {
    for_each = try(var.security_groups[count.index]["egress_rules"], [])

    content {
      cidr_blocks      = try(egress.value["cidr_blocks"], null)
      description      = try(egress.value["description"], null)
      from_port        = egress.value["from_port"]
      ipv6_cidr_blocks = try(egress.value["ipv6_cidr_blocks"], null)
      prefix_list_ids  = try(egress.value["prefix_list_ids"], null)
      protocol         = egress.value["protocol"]
      security_groups  = try(egress.value["security_groups"], null)
      self             = try(egress.value["self"], null)
      to_port          = egress.value["to_port"]
    }
  }
}

resource "aws_security_group_rule" "this" {
  count = length(var.security_group_rules)

  cidr_blocks              = try(var.security_group_rules[count.index]["cidr_blocks"], null)
  description              = try(var.security_group_rules[count.index]["description"], null)
  from_port                = var.security_group_rules[count.index]["from_port"]
  ipv6_cidr_blocks         = try(var.security_group_rules[count.index]["ipv6_cidr_blocks"], null)
  prefix_list_ids          = try(var.security_group_rules[count.index]["prefix_list_ids"], null)
  protocol                 = var.security_group_rules[count.index]["protocol"]
  region                   = try(var.security_group_rules[count.index]["region"], null)
  security_group_id        = var.security_group_rules[count.index]["security_group_id"]
  self                     = try(var.security_group_rules[count.index]["self"], null)
  source_security_group_id = try(var.security_group_rules[count.index]["source_security_group_id"], null)
  to_port                  = var.security_group_rules[count.index]["to_port"]
  type                     = var.security_group_rules[count.index]["type"]
}

resource "aws_subnet" "this" {
  count = length(var.subnets)

  assign_ipv6_address_on_creation                = try(var.subnets[count.index]["assign_ipv6_address_on_creation"], null)
  availability_zone                              = try(var.subnets[count.index]["availability_zone"], null)
  availability_zone_id                           = try(var.subnets[count.index]["availability_zone_id"], null)
  cidr_block                                     = try(var.subnets[count.index]["cidr_block"], null)
  customer_owned_ipv4_pool                       = try(var.subnets[count.index]["customer_owned_ipv4_pool"], null)
  enable_dns64                                   = try(var.subnets[count.index]["enable_dns64"], null)
  enable_lni_at_device_index                     = try(var.subnets[count.index]["enable_lni_at_device_index"], null)
  enable_resource_name_dns_aaaa_record_on_launch = try(var.subnets[count.index]["enable_resource_name_dns_aaaa_record_on_launch"], null)
  enable_resource_name_dns_a_record_on_launch    = try(var.subnets[count.index]["enable_resource_name_dns_a_record_on_launch"], null)
  ipv6_cidr_block                                = try(var.subnets[count.index]["ipv6_cidr_block"], null)
  ipv6_native                                    = try(var.subnets[count.index]["ipv6_native"], null)
  map_customer_owned_ip_on_launch                = try(var.subnets[count.index]["map_customer_owned_ip_on_launch"], null)
  map_public_ip_on_launch                        = try(var.subnets[count.index]["map_public_ip_on_launch"], null)
  outpost_arn                                    = try(var.subnets[count.index]["outpost_arn"], null)
  private_dns_hostname_type_on_launch            = try(var.subnets[count.index]["private_dns_hostname_type_on_launch"], null)
  region                                         = try(var.subnets[count.index]["region"], null)
  tags                                           = merge(try(var.tags, {}), try(var.subnets[count.index]["tags"], {}))
  vpc_id                                         = var.subnets[count.index]["vpc_id"]
}

resource "aws_vpc" "this" {
  count = length(keys(var.vpc)) > 0 ? 1 : 0

  assign_generated_ipv6_cidr_block     = try(var.vpc["assign_generated_ipv6_cidr_block"], null)
  cidr_block                           = try(var.vpc["cidr_block"], null)
  enable_dns_hostnames                 = try(var.vpc["enable_dns_hostnames"], null)
  enable_dns_support                   = try(var.vpc["enable_dns_support"], null)
  enable_network_address_usage_metrics = try(var.vpc["enable_network_address_usage_metrics"], null)
  instance_tenancy                     = try(var.vpc["instance_tenancy"], null)
  ipv4_ipam_pool_id                    = try(var.vpc["ipv4_ipam_pool_id"], null)
  ipv4_netmask_length                  = try(var.vpc["ipv4_netmask_length"], null)
  ipv6_cidr_block                      = try(var.vpc["ipv6_cidr_block"], null)
  ipv6_cidr_block_network_border_group = try(var.vpc["ipv6_cidr_block_network_border_group"], null)
  ipv6_ipam_pool_id                    = try(var.vpc["ipv6_ipam_pool_id"], null)
  ipv6_netmask_length                  = try(var.vpc["ipv6_netmask_length"], null)
  region                               = try(var.vpc["region"], null)
  tags                                 = merge(try(var.tags, {}), try(var.vpc["tags"], {}))
}

resource "aws_vpc_block_public_access_exclusion" "this" {
  count = length(keys(var.vpc_block_public_access_exclusion)) > 0 ? 1 : 0

  internet_gateway_exclusion_mode = var.vpc_block_public_access_exclusion["internet_gateway_exclusion_mode"]
  region                          = try(var.vpc_block_public_access_exclusion["region"], null)
  subnet_id                       = try(var.vpc_block_public_access_exclusion["subnet_id"], null)
  tags                            = merge(try(var.tags, {}), try(var.vpc_block_public_access_exclusion["tags"], {}))
  vpc_id                          = try(var.vpc_block_public_access_exclusion["vpc_id"], null)
}

resource "aws_vpc_block_public_access_options" "this" {
  count = length(keys(var.vpc_block_public_access_options)) > 0 ? 1 : 0

  internet_gateway_block_mode = var.vpc_block_public_access_options["internet_gateway_block_mode"]
  region                      = try(var.vpc_block_public_access_options["region"], null)
}

resource "aws_vpc_dhcp_options" "this" {
  count = length(keys(var.vpc_dhcp_options)) > 0 ? 1 : 0

  domain_name                       = try(var.vpc_dhcp_options["domain_name"], null)
  domain_name_servers               = try(var.vpc_dhcp_options["domain_name_servers"], null)
  ipv6_address_preferred_lease_time = try(var.vpc_dhcp_options["ipv6_address_preferred_lease_time"], null)
  netbios_name_servers              = try(var.vpc_dhcp_options["netbios_name_servers"], null)
  netbios_node_type                 = try(var.vpc_dhcp_options["netbios_node_type"], null)
  ntp_servers                       = try(var.vpc_dhcp_options["ntp_servers"], null)
  region                            = try(var.vpc_dhcp_options["region"], null)
  tags                              = merge(try(var.tags, {}), try(var.vpc_dhcp_options["tags"], {}))
}

resource "aws_vpc_dhcp_options_association" "this" {
  count = length(var.vpc_dhcp_options_associations)

  dhcp_options_id = var.vpc_dhcp_options_associations[count.index]["dhcp_options_id"]
  region          = try(var.vpc_dhcp_options_associations[count.index]["region"], null)
  vpc_id          = var.vpc_dhcp_options_associations[count.index]["vpc_id"]
}

resource "aws_vpc_endpoint" "this" {
  count = length(var.vpc_endpoints)

  auto_accept                = try(var.vpc_endpoints[count.index]["auto_accept"], null)
  ip_address_type            = try(var.vpc_endpoints[count.index]["ip_address_type"], null)
  policy                     = try(var.vpc_endpoints[count.index]["policy"], null)
  private_dns_enabled        = try(var.vpc_endpoints[count.index]["private_dns_enabled"], null)
  resource_configuration_arn = try(var.vpc_endpoints[count.index]["resource_configuration_arn"], null)
  route_table_ids            = try(var.vpc_endpoints[count.index]["route_table_ids"], null)
  security_group_ids         = try(var.vpc_endpoints[count.index]["security_group_ids"], null)
  service_name               = var.vpc_endpoints[count.index]["service_name"]
  service_network_arn        = try(var.vpc_endpoints[count.index]["service_network_arn"], null)
  service_region             = try(var.vpc_endpoints[count.index]["service_region"], null)
  subnet_ids                 = try(var.vpc_endpoints[count.index]["subnet_ids"], null)
  tags                       = merge(try(var.tags, {}), try(var.vpc_endpoints[count.index]["tags"], {}))
  vpc_endpoint_type          = try(var.vpc_endpoints[count.index]["vpc_endpoint_type"], null)
  vpc_id                     = var.vpc_endpoints[count.index]["vpc_id"]

  dynamic "dns_options" {
    for_each = try(var.vpc_endpoints[count.index]["dns_options"], [])

    content {
      dns_record_ip_type                             = try(dns_options.value["dns_record_ip_type"], null)
      private_dns_only_for_inbound_resolver_endpoint = try(dns_options.value["private_dns_only_for_inbound_resolver_endpoint"], null)
    }
  }

  dynamic "subnet_configuration" {
    for_each = try(var.vpc_endpoints[count.index]["subnet_configuration"], [])

    content {
      ipv4      = try(subnet_configuration.value["ipv4"], null)
      ipv6      = try(subnet_configuration.value["ipv6"], null)
      subnet_id = try(subnet_configuration.value["subnet_id"], null)
    }
  }
}

resource "aws_vpc_endpoint_connection_accepter" "this" {
  count = length(var.vpc_endpoint_connection_accepters)

  region                  = try(var.vpc_endpoint_connection_accepters[count.index]["region"], null)
  vpc_endpoint_id         = var.vpc_endpoint_connection_accepters[count.index]["vpc_endpoint_id"]
  vpc_endpoint_service_id = var.vpc_endpoint_connection_accepters[count.index]["vpc_endpoint_service_id"]
}

resource "aws_vpc_endpoint_connection_notification" "this" {
  count = length(var.vpc_endpoint_connection_notifications)

  connection_events           = var.vpc_endpoint_connection_notifications[count.index]["connection_events"]
  connection_notification_arn = var.vpc_endpoint_connection_notifications[count.index]["connection_notification_arn"]
  region                      = try(var.vpc_endpoint_connection_notifications[count.index]["region"], null)
  vpc_endpoint_id             = try(var.vpc_endpoint_connection_notifications[count.index]["vpc_endpoint_id"], null)
  vpc_endpoint_service_id     = try(var.vpc_endpoint_connection_notifications[count.index]["vpc_endpoint_service_id"], null)
}

resource "aws_vpc_endpoint_policy" "this" {
  count = length(var.vpc_endpoint_policies)

  policy          = try(var.vpc_endpoint_policies[count.index]["policy"], null)
  region          = try(var.vpc_endpoint_policies[count.index]["region"], null)
  vpc_endpoint_id = var.vpc_endpoint_policies[count.index]["vpc_endpoint_id"]
}

resource "aws_vpc_endpoint_private_dns" "this" {
  count = length(var.vpc_endpoint_private_dns)

  private_dns_enabled = var.vpc_endpoint_private_dns[count.index]["private_dns_enabled"]
  region              = try(var.vpc_endpoint_private_dns["region"], null)
  vpc_endpoint_id     = var.vpc_endpoint_private_dns[count.index]["vpc_endpoint_id"]
}

resource "aws_vpc_endpoint_route_table_association" "this" {
  count = length(var.vpc_endpoint_route_table_associations)

  region          = try(var.vpc_endpoint_route_table_associations[count.index]["region"], null)
  route_table_id  = var.vpc_endpoint_route_table_associations[count.index]["route_table_id"]
  vpc_endpoint_id = var.vpc_endpoint_route_table_associations[count.index]["vpc_endpoint_id"]
}

resource "aws_vpc_endpoint_security_group_association" "this" {
  count = length(var.vpc_endpoint_security_group_associations)

  region                      = try(var.vpc_endpoint_security_group_associations["region"], null)
  replace_default_association = try(var.vpc_endpoint_security_group_associations[count.index]["replace_default_association"], null)
  security_group_id           = var.vpc_endpoint_security_group_associations[count.index]["security_group_id"]
  vpc_endpoint_id             = var.vpc_endpoint_security_group_associations[count.index]["vpc_endpoint_id"]
}

resource "aws_vpc_endpoint_service" "this" {
  count = length(var.vpc_endpoint_services)

  acceptance_required        = var.vpc_endpoint_services[count.index]["acceptance_required"]
  allowed_principals         = try(var.vpc_endpoint_services[count.index]["allowed_principals"], null)
  gateway_load_balancer_arns = try(var.vpc_endpoint_services[count.index]["gateway_load_balancer_arns"], null)
  network_load_balancer_arns = try(var.vpc_endpoint_services[count.index]["network_load_balancer_arns"], null)
  private_dns_name           = try(var.vpc_endpoint_services[count.index]["private_dns_name"], null)
  region                     = try(var.vpc_endpoint_services["region"], null)
  supported_ip_address_types = try(var.vpc_endpoint_services[count.index]["supported_ip_address_types"], null)
  supported_regions          = try(var.vpc_endpoint_services[count.index]["supported_regions"], null)
  tags                       = merge(try(var.tags, {}), try(var.vpc_endpoint_services[count.index]["tags"], {}))
}

resource "aws_vpc_endpoint_service_allowed_principal" "this" {
  count = length(var.vpc_endpoint_service_allowed_principals)

  principal_arn           = var.vpc_endpoint_service_allowed_principals[count.index]["principal_arn"]
  region                  = try(var.vpc_endpoint_service_allowed_principals[count.index]["region"], null)
  vpc_endpoint_service_id = var.vpc_endpoint_service_allowed_principals[count.index]["vpc_endpoint_service_id"]
}

resource "aws_vpc_endpoint_service_private_dns_verification" "this" {
  count = length(var.vpc_endpoint_service_private_dns_verifications)

  region                = try(var.vpc_endpoint_service_private_dns_verifications[count.index]["region"], null)
  service_id            = var.vpc_endpoint_service_private_dns_verifications[count.index]["service_id"]
  wait_for_verification = try(var.vpc_endpoint_service_private_dns_verifications[count.index]["wait_for_verification"], null)
}

resource "aws_vpc_endpoint_subnet_association" "this" {
  count = length(var.vpc_endpoint_subnet_associations)

  region          = try(var.vpc_endpoint_subnet_associations["region"], null)
  subnet_id       = var.vpc_endpoint_subnet_associations[count.index]["subnet_id"]
  vpc_endpoint_id = var.vpc_endpoint_subnet_associations[count.index]["vpc_endpoint_id"]
}

resource "aws_vpc_ipv4_cidr_block_association" "this" {
  count = length(var.vpc_ipv4_cidr_block_associations)

  cidr_block          = try(var.vpc_ipv4_cidr_block_associations[count.index]["cidr_block"], null)
  ipv4_ipam_pool_id   = try(var.vpc_ipv4_cidr_block_associations[count.index]["ipv4_ipam_pool_id"], null)
  ipv4_netmask_length = try(var.vpc_ipv4_cidr_block_associations[count.index]["ipv4_netmask_length"], null)
  region              = try(var.vpc_ipv4_cidr_block_associations[count.index]["region"], null)
  vpc_id              = var.vpc_ipv4_cidr_block_associations[count.index]["vpc_id"]
}

resource "aws_vpc_ipv6_cidr_block_association" "this" {
  count = length(var.vpc_ipv6_cidr_block_associations)

  assign_generated_ipv6_cidr_block = try(var.vpc_ipv6_cidr_block_associations[count.index]["assign_generated_ipv6_cidr_block"], null)
  ipv6_cidr_block                  = try(var.vpc_ipv6_cidr_block_associations[count.index]["ipv6_cidr_block"], null)
  ipv6_ipam_pool_id                = try(var.vpc_ipv6_cidr_block_associations[count.index]["ipv6_ipam_pool_id"], null)
  ipv6_netmask_length              = try(var.vpc_ipv6_cidr_block_associations[count.index]["ipv6_netmask_length"], null)
  ipv6_pool                        = try(var.vpc_ipv6_cidr_block_associations[count.index]["ipv6_pool"], null)
  region                           = try(var.vpc_ipv6_cidr_block_associations[count.index]["region"], null)
  vpc_id                           = var.vpc_ipv6_cidr_block_associations[count.index]["vpc_id"]
}

resource "aws_vpc_network_performance_metric_subscription" "this" {
  count = length(var.vpc_network_performance_metric_subscriptions)

  destination = var.vpc_network_performance_metric_subscriptions[count.index]["destination"]
  metric      = try(var.vpc_network_performance_metric_subscriptions[count.index]["metric"], null)
  region      = try(var.vpc_network_performance_metric_subscriptions[count.index]["region"], null)
  source      = var.vpc_network_performance_metric_subscriptions[count.index]["source"]
  statistic   = try(var.vpc_network_performance_metric_subscriptions[count.index]["statistic"], null)
}

resource "aws_vpc_peering_connection" "this" {
  count = length(var.vpc_peering_connections)

  auto_accept   = try(var.vpc_peering_connections[count.index]["auto_accept"], null)
  peer_owner_id = try(var.vpc_peering_connections[count.index]["peer_owner_id"], null)
  peer_region   = try(var.vpc_peering_connections[count.index]["peer_region"], null)
  peer_vpc_id   = var.vpc_peering_connections[count.index]["peer_vpc_id"]
  region        = try(var.vpc_peering_connections[count.index]["region"], null)
  tags          = merge(try(var.tags, {}), try(var.vpc_peering_connections[count.index]["tags"], {}))
  vpc_id        = var.vpc_peering_connections[count.index]["vpc_id"]

  dynamic "accepter" {
    for_each = try([var.vpc_peering_connections[count.index]["accepter"]], [])

    content {
      allow_remote_vpc_dns_resolution = try(accepter.value["allow_remote_vpc_dns_resolution"], null)
    }
  }

  dynamic "requester" {
    for_each = try([var.vpc_peering_connections[count.index]["requester"]], [])

    content {
      allow_remote_vpc_dns_resolution = try(requester.value["allow_remote_vpc_dns_resolution"], null)
    }
  }
}

resource "aws_vpc_peering_connection_accepter" "this" {
  count = length(var.vpc_peering_connections_accepters)

  auto_accept               = try(var.vpc_peering_connections_accepters[count.index]["auto_accept"], null)
  region                    = try(var.vpc_peering_connections_accepters[count.index]["region"], null)
  tags                      = merge(try(var.tags, {}), try(var.vpc_peering_connections_accepters[count.index]["tags"], {}))
  vpc_peering_connection_id = var.vpc_peering_connections_accepters[count.index]["vpc_peering_connection_id"]
}

resource "aws_vpc_peering_connection_options" "this" {
  count = length(var.vpc_peering_connections_options)

  region                    = try(var.vpc_peering_connections_options[count.index]["region"], null)
  vpc_peering_connection_id = var.vpc_peering_connections_options[count.index]["vpc_peering_connection_id"]

  dynamic "accepter" {
    for_each = try([var.vpc_peering_connections_options[count.index]["accepter"]], [])

    content {
      allow_remote_vpc_dns_resolution = true
    }

  }

  dynamic "requester" {
    for_each = try([var.vpc_peering_connections_options[count.index]["requester"]], [])

    content {
      allow_remote_vpc_dns_resolution = true
    }
  }
}

resource "aws_vpc_route_server" "this" {
  count = length(var.vpc_route_servers)

  amazon_side_asn           = var.vpc_route_servers[count.index]["amazon_side_asn"]
  persist_routes            = try(var.vpc_route_servers[count.index]["persist_routes"], null)
  persist_routes_duration   = try(var.vpc_route_servers[count.index]["persist_routes_duration"], null)
  region                    = try(var.vpc_route_servers[count.index]["region"], null)
  sns_notifications_enabled = try(var.vpc_route_servers[count.index]["sns_notifications_enabled"], null)
  tags                      = merge(try(var.tags, {}), try(var.vpc_route_servers[count.index]["tags"], {}))
}

resource "aws_vpc_route_server_endpoint" "this" {
  count = length(var.vpc_route_server_endpoints)

  region          = try(var.vpc_route_server_endpoints[count.index]["region"], null)
  route_server_id = var.vpc_route_server_endpoints[count.index]["route_server_id"]
  subnet_id       = var.vpc_route_server_endpoints[count.index]["subnet_id"]
  tags            = merge(try(var.tags, {}), try(var.vpc_route_server_endpoints[count.index]["tags"], {}))
}

resource "aws_vpc_route_server_peer" "this" {
  count = length(var.vpc_route_server_peers)

  peer_address             = var.vpc_route_server_peers[count.index]["peer_address"]
  region                   = try(var.vpc_route_server_peers[count.index]["region"], null)
  route_server_endpoint_id = var.vpc_route_server_peers[count.index]["route_server_endpoint_id"]
  tags                     = merge(try(var.tags, {}), try(var.vpc_route_server_peers[count.index]["tags"], {}))

  bgp_options {
    peer_asn                = var.vpc_route_server_peers[count.index]["bgp_options"]["peer_asn"]
    peer_liveness_detection = try(var.vpc_route_server_peers[count.index]["bgp_options"]["peer_liveness_detection"], null)
  }
}

resource "aws_vpc_route_server_propagation" "this" {
  count = length(var.vpc_route_server_propagations)

  region          = try(var.vpc_route_server_propagations[count.index]["region"], null)
  route_server_id = var.vpc_route_server_propagations[count.index]["route_server_id"]
  route_table_id  = var.vpc_route_server_propagations[count.index]["route_table_id"]
}

resource "aws_vpc_route_server_vpc_association" "this" {
  count = length(var.vpc_route_server_vpc_associations)

  region          = try(var.vpc_route_server_vpc_associations[count.index]["region"], null)
  route_server_id = var.vpc_route_server_vpc_associations[count.index]["route_server_id"]
  vpc_id          = var.vpc_route_server_vpc_associations[count.index]["vpc_id"]
}

resource "aws_vpc_security_group_egress_rule" "this" {
  count = length(var.vpc_security_group_egress_rules)

  cidr_ipv4                    = try(var.vpc_security_group_egress_rules[count.index]["cidr_ipv4"], null)
  cidr_ipv6                    = try(var.vpc_security_group_egress_rules[count.index]["cidr_ipv6"], null)
  description                  = try(var.vpc_security_group_egress_rules[count.index]["description"], null)
  from_port                    = try(var.vpc_security_group_egress_rules[count.index]["from_port"], null)
  ip_protocol                  = try(var.vpc_security_group_egress_rules[count.index]["ip_protocol"], null)
  prefix_list_id               = try(var.vpc_security_group_egress_rules[count.index]["prefix_list_id"], null)
  referenced_security_group_id = try(var.vpc_security_group_egress_rules[count.index]["referenced_security_group_id"], null)
  security_group_id            = var.vpc_security_group_egress_rules[count.index]["security_group_id"]
  tags                         = merge(try(var.tags, {}), try(var.vpc_security_group_egress_rules[count.index]["tags"], {}))
  to_port                      = try(var.vpc_security_group_egress_rules[count.index]["to_port"], null)
}

resource "aws_vpc_security_group_ingress_rule" "this" {
  count = length(var.vpc_security_group_ingress_rules)

  cidr_ipv4                    = try(var.vpc_security_group_ingress_rules[count.index]["cidr_ipv4"], null)
  cidr_ipv6                    = try(var.vpc_security_group_ingress_rules[count.index]["cidr_ipv6"], null)
  description                  = try(var.vpc_security_group_ingress_rules[count.index]["description"], null)
  from_port                    = try(var.vpc_security_group_ingress_rules[count.index]["from_port"], null)
  ip_protocol                  = try(var.vpc_security_group_ingress_rules[count.index]["ip_protocol"], null)
  prefix_list_id               = try(var.vpc_security_group_ingress_rules[count.index]["prefix_list_id"], null)
  referenced_security_group_id = try(var.vpc_security_group_ingress_rules[count.index]["referenced_security_group_id"], null)
  security_group_id            = var.vpc_security_group_ingress_rules[count.index]["security_group_id"]
  tags                         = merge(try(var.tags, {}), try(var.vpc_security_group_ingress_rules[count.index]["tags"], {}))
  to_port                      = try(var.vpc_security_group_ingress_rules[count.index]["to_port"], null)
}

resource "aws_vpc_security_group_vpc_association" "this" {
  count = length(var.vpc_security_group_vpc_associations)

  region            = try(var.vpc_security_group_vpc_associations[count.index]["region"], null)
  security_group_id = var.vpc_security_group_vpc_associations[count.index]["security_group_id"]
  vpc_id            = var.vpc_security_group_vpc_associations[count.index]["vpc_id"]
}
