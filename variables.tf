variable "default_network_acl" {
  description = "Configuration block to set up a default network acl."
  type        = any
  default     = {}
}

variable "default_route_table" {
  description = "Configuration block to set up a default route table."
  type        = any
  default     = {}
}

variable "default_security_group" {
  description = "Configuration block to set up a default security group."
  type        = any
  default     = {}
}

variable "default_subnet" {
  description = "Configuration block to set up a default subnet."
  type        = any
  default     = {}
}

variable "default_vpc" {
  description = "Configuration block to set up a default vpc."
  type        = any
  default     = {}
}

variable "default_vpc_dhcp_options" {
  description = "Configuration block to set up a default vpc dhcp options."
  type        = any
  default     = {}
}

variable "ec2_managed_prefix_list" {
  description = "Configuration block to set up an EC2 managed prefix list."
  type        = any
  default     = {}
}

variable "ec2_managed_prefix_list_entries" {
  description = "List of configuration block to create entries for an EC2 managed prefix list."
  type        = any
  default     = []
}

variable "ec2_network_insights_analysis" {
  description = "List of configuration blocks to set up network insights analysis for a path."
  type        = any
  default     = []
}

variable "ec2_network_insights_paths" {
  description = "List of configuration blocks to set up network insights paths."
  type        = any
  default     = []
}

variable "ec2_subnet_cidr_reservations" {
  description = "List of configuration blocks to create a cidr reservation for a subnet."
  type        = any
  default     = []
}

variable "ec2_traffic_mirror_filters" {
  description = "List of configuration blocks to set up an EC2 traffic mirror filter."
  type        = any
  default     = []
}

variable "ec2_traffic_mirror_filter_rules" {
  description = "List of configuration blocks to create rules for an EC2 traffic mirror filter."
  type        = any
  default     = []
}

variable "ec2_traffic_mirror_sessions" {
  description = "List of configuration blocks to create an EC2 traffic mirror session."
  type        = any
  default     = []
}

variable "ec2_traffic_mirror_targets" {
  description = "List of configuration blocks to set up targets for an EC2 traffic mirror."
  type        = any
  default     = []
}

variable "egress_only_internet_gateways" {
  description = "List of configuration blocks to create an egress-only internet gateway."
  type        = any
  default     = []
}

variable "flow_logs" {
  description = "List of configuration blocks to set up a vpc/subnet/eni/transit gateway/transit gateway attachment flow log."
  type        = any
  default     = []
}

variable "internet_gateways" {
  description = "List of configuration blocks to create an internet gateway."
  type        = any
  default     = []
}

variable "internet_gateway_attachments" {
  description = "List of configuration blocks to create internet gateway attachments."
  type        = any
  default     = []
}

variable "main_route_table_association" {
  description = "Configuration block to associate a main route table with a vpc."
  type        = any
  default     = {}
}

variable "nat_gateway_eip_associations" {
  description = "List of configuration blocks to create nat gateway eip associations."
  type        = any
  default     = []
}

variable "nat_gateways" {
  description = "List of configuration blocks to create a nat gateway."
  type        = any
  default     = []
}

variable "network_acl_associations" {
  description = "List of configuration blocks to associate a network acl with a subnet."
  type        = any
  default     = []
}

variable "network_acls" {
  description = "List of configuration blocks to create a network acl."
  type        = any
  default     = []
}

variable "network_acl_rules" {
  description = "List of configuration blocks to create rules for a network acl."
  type        = any
  default     = []
}

variable "network_interfaces" {
  description = "List of configuration blocks to create a network interface (eni)."
  type        = any
  default     = []
}

variable "network_interface_attachments" {
  description = "List of configuration blocks to attach a network interface (eni) to an EC2 instance."
  type        = any
  default     = []
}

variable "network_interface_permissions" {
  description = "List of configuration blocks to grant cross-account access to an ENI."
  type        = any
  default     = []
}

variable "network_interface_sg_attachments" {
  description = "List of configuration blocks to attach a security group to a network interface (eni)."
  type        = any
  default     = []
}

variable "routes" {
  description = "List of configuration blocks to create an entry in a routing table."
  type        = any
  default     = []
}

variable "route_table_associations" {
  description = "List of configuration blocks to create an association between a route table and a subnet or a route table and an internet gateway or virtual private gateway."
  type        = any
  default     = []
}

variable "route_tables" {
  description = "List of configuration blocks to create a routing table."
  type        = any
  default     = []
}

variable "security_group_rules" {
  description = "List of configuration blocks to create an ingress or egress group and add it to a security group."
  type        = any
  default     = []
}

variable "security_groups" {
  description = "List of configuration blocks to create a security group."
  type        = any
  default     = []
}

variable "subnets" {
  description = "List of configuration blocks to create a subnet."
  type        = any
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "vpc" {
  description = "Configuration block to create a vpc."
  type        = any
  default     = {}
}

variable "vpc_block_public_access_exclusion" {
  description = "Configuration block to configure a VPC Block Public Access Exclusion."
  type        = any
  default     = {}
}

variable "vpc_block_public_access_options" {
  description = "Configuration block to configure a VPC Block Public Access Options."
  type        = any
  default     = {}
}

variable "vpc_dhcp_options" {
  description = "Configuration block to set up dhcp options for a vpc."
  type        = any
  default     = {}
}

variable "vpc_dhcp_options_associations" {
  description = "List of configuration blocks to associate dhcp options with a vpc."
  type        = any
  default     = []
}

variable "vpc_endpoint_connection_accepters" {
  description = "List of configuration blocks to create a vpc endpoint connection accepter."
  type        = any
  default     = []
}

variable "vpc_endpoint_connection_notifications" {
  description = "List of configuration blocks to set up notifications for a vpc endpoint connection."
  type        = any
  default     = []
}

variable "vpc_endpoint_policies" {
  description = "List of configuration blocks to create policies for a vpc endpoint."
  type        = any
  default     = []
}

variable "vpc_endpoint_private_dns" {
  description = "List of configuration blocks to enable private DNS for a vpc endpoint."
  type        = any
  default     = []
}

variable "vpc_endpoint_route_table_associations" {
  description = "List of configuration blocks to associate a route table with a vpc endpoint."
  type        = any
  default     = []
}

variable "vpc_endpoints" {
  description = "List of configuration blocks to create vpc endpoints."
  type        = any
  default     = []
}

variable "vpc_endpoint_security_group_associations" {
  description = "List of configuration blocks to associate a security group with a vpc endpoint."
  type        = any
  default     = []
}

variable "vpc_endpoint_service_allowed_principals" {
  description = "List of configuration blocks to allow a principal to discover a VPC endpoint service."
  type        = any
  default     = []
}

variable "vpc_endpoint_service_private_dns_verifications" {
  description = "List of configuration blocks to verify private DNS for a vpc endpoint service."
  type        = any
  default     = []
}

variable "vpc_endpoint_services" {
  description = "List of configuration blocks to a create vpc endpoint service."
  type        = any
  default     = []
}

variable "vpc_endpoint_subnet_associations" {
  description = "List of configuration blocks to associate a subnet with a vpc endpoint."
  type        = any
  default     = []
}

variable "vpc_ipv4_cidr_block_associations" {
  description = "List of configuration blocks to associate additional IPv4 CIDR blocks with a vpc."
  type        = any
  default     = []
}

variable "vpc_ipv6_cidr_block_associations" {
  description = "List of configuration blocks to associate additional IPv6 CIDR blocks with a vpc."
  type        = any
  default     = []
}

variable "vpc_network_performance_metric_subscriptions" {
  description = "List of configuration blocks to create a network performance metric subscriptions."
  type        = any
  default     = []
}

variable "vpc_peering_connections" {
  description = "List of configuration blocks to set up a vpc peering connection."
  type        = any
  default     = []
}

variable "vpc_peering_connections_accepters" {
  description = "List of configuration blocks to manage the accepter's side of a vpc peering connection."
  type        = any
  default     = []
}

variable "vpc_peering_connections_options" {
  description = "List of configuration blocks to manage vpc peering connection options."
  type        = any
  default     = []
}

variable "vpc_route_servers" {
  description = "List of configuration blocks to create vpc route servers."
  type        = any
  default     = []
}

variable "vpc_route_server_endpoints" {
  description = "List of configuration blocks to create endpoints for vpc route servers."
  type        = any
  default     = []
}

variable "vpc_route_server_peers" {
  description = "List of configuration blocks to create vpc route server peers."
  type        = any
  default     = []
}

variable "vpc_route_server_propagations" {
  description = "List of configuration blocks to create vpc route server propagations."
  type        = any
  default     = []
}

variable "vpc_route_server_vpc_associations" {
  description = "List of configuration blocks to create vpc associations for vpc route servers."
  type        = any
  default     = []
}

variable "vpc_security_group_egress_rules" {
  description = "List of configuration blocks to create an egress rules for a security group."
  type        = any
  default     = []
}

variable "vpc_security_group_ingress_rules" {
  description = "List of configuration blocks to create an ingress rules for a security group."
  type        = any
  default     = []
}

variable "vpc_security_group_vpc_associations" {
  description = "List of configuration blocks to associate a security group with a vpc."
  type        = any
  default     = []
}
