# AWS VPC Terraform module

Terraform module which creates VPC resources on AWS.

## Available Features

- Default network acl
- Default route table
- Default security group
- Default subnet
- Default vpc
- Default vpc dhcp options
- EC2 managed prefix list
- EC2 managed prefix list entry
- EC2 network insights analysis
- EC2 network insights path
- EC2 subnet CIDR reservation
- EC2 traffic mirror filter
- EC2 traffic mirror filter rule
- EC2 traffic mirror session
- EC2 traffic mirror target
- Egress only internet gateway
- Flow logs
- Internet gateway
- Internet gateway attachment
- Main route table association
- Nat gateway
- Nat gateway EIP association
- Network acl
- Network acl association
- Network acl rule
- Network interface
- Network interface attachment
- Network interface permission
- Network interface security group attachment
- Route
- Route table
- Route table association
- Security group
- Security group rule
- Subnet
- VPC
- VPC block public access exclusion
- VPC block public access options
- VPC DHCP options
- VPC DHCP options association
- VPC endpoint
- VPC endpoint connection accepter
- VPC endpoint connection notification
- VPC endpoint policy
- VPC endpoint private DNS
- VPC endpoint route table association
- VPC endpoint security group association
- VPC endpoint service
- VPC endpoint service allowed principal
- VPC endpoint service private dns verification
- VPC endpoint subnet association
- VPC ipv4 CIDR block association
- VPC ipv6 CIDR block association
- VPC network performance metric subscription
- VPC peering connection
- VPC peering connection accepter
- VPC peering connection options
- VPC route server
- VPC route server endpoint
- VPC route server peer
- VPC route server propagation
- VPC route server vpc association
- VPC security group egress rule
- VPC security group ingress rule
- VPC security group vpc associations

## Examples:

- [Default network acl](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/default_network_acl)
- [Default route table](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/default_route_table)
- [Default security group](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/default_security_group)
- [Default subnet](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/default_subnet)
- [Default vpc](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/default_vpc)
- [Default vpc dhcp options](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/default_vpc_dhcp_options)
- [EC2 managed prefix list](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_managed_prefix_list)
- [EC2 managed prefix list entry](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_managed_prefix_list_entry)
- [EC2 network insights analysis](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_network_insights_analysis)
- [EC2 network insights path](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_network_insights_path)
- [EC2 subnet CIDR reservation](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_subnet_cidr_reservation)
- [EC2 traffic mirror filter](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_traffic_mirror_filter)
- [EC2 traffic mirror filter rule](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_traffic_mirror_filter_rule)
- [EC2 traffic mirror session](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_traffic_mirror_session)
- [EC2 traffic mirror target](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/ec2_traffic_mirror_target)
- [Egress only internet gateway](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/egress_only_internet_gateway)
- [Flow logs](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/flow_log)
- [Internet gateway](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/internet_gateway)
- [Internet gateway attachment](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/internet_gateway_attachment)
- [Main route table association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/main_route_table_association)
- [Nat gateway](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/nat_gateway)
- [Nat gateway EIP association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/nat_gateway_eip_association)
- [Network acl](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/network_acl)
- [Network acl association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/network_acl_association)
- [Network acl rule](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/network_acl_rule)
- [Network interface](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/network_interface)
- [Network interface attachment](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/network_interface_attachment)
- [Network interface permission](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/network_interface_permission)
- [Network interface security group attachment](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/network_interface_security_group_attachment)
- [Route](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/route)
- [Route table](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/route_table)
- [Route table association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/route_table_association)
- [Security group](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/security_group)
- [Security group rule](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/security_group_rule)
- [Subnet](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/subnet)
- [VPC](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc)
- [VPC block public access exclusion](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_block_public_access_exclusion)
- [VPC block public access options](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_block_public_access_options)
- [VPC DHCP options](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_dhcp_options)
- [VPC DHCP options association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_dhcp_options_association)
- [VPC endpoint](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint)
- [VPC endpoint connection accepter](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_connection_accepter)
- [VPC endpoint connection notification](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_connection_notification)
- [VPC endpoint policy](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_policy)
- [VPC endpoint private DNS](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_private_dns)
- [VPC endpoint route table association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_route_table_association)
- [VPC endpoint security group association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_security_group_association)
- [VPC endpoint service](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_service)
- [VPC endpoint service allowed principal](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_service_allowed_principal)
- [VPC endpoint service private dns verification](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_service_private_dns_verification)
- [VPC endpoint subnet association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_endpoint_subnet_association)
- [VPC ipv4 CIDR block association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_ipv4_cidr_block_association)
- [VPC ipv6 CIDR block association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_ipv6_cidr_block_association)
- [VPC network performance metric subscription](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_network_performance_metric_subscription)
- [VPC peering connection](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_peering_connection)
- [VPC peering connection accepter](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_peering_connection_accepter)
- [VPC peering connection options](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_peering_connection_options)
- [VPC route server](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_route_server)
- [VPC route server endpoint](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_route_server_endpoint)
- [VPC route server peer](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_route_server_peer)
- [VPC route server propagation](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_route_server_propagation)
- [VPC route server vpc association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_route_server_vpc_association)
- [VPC security group egress rule](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_security_group_egress_rule)
- [VPC security group ingress rule](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_security_group_ingress_rule)
- [VPC security group vpc association](https://github.com/janduursma/terraform-module-aws-vpc/tree/main/examples/vpc_security_group_vpc_association)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.13.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_network_acl.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/default_network_acl) | resource |
| [aws_default_route_table.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/default_route_table) | resource |
| [aws_default_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/default_security_group) | resource |
| [aws_default_subnet.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/default_subnet) | resource |
| [aws_default_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/default_vpc) | resource |
| [aws_default_vpc_dhcp_options.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/default_vpc_dhcp_options) | resource |
| [aws_ec2_managed_prefix_list.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_managed_prefix_list) | resource |
| [aws_ec2_managed_prefix_list_entry.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_managed_prefix_list_entry) | resource |
| [aws_ec2_network_insights_analysis.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_network_insights_analysis) | resource |
| [aws_ec2_network_insights_path.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_network_insights_path) | resource |
| [aws_ec2_subnet_cidr_reservation.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_subnet_cidr_reservation) | resource |
| [aws_ec2_traffic_mirror_filter.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_traffic_mirror_filter) | resource |
| [aws_ec2_traffic_mirror_filter_rule.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_traffic_mirror_filter_rule) | resource |
| [aws_ec2_traffic_mirror_session.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_traffic_mirror_session) | resource |
| [aws_ec2_traffic_mirror_target.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/ec2_traffic_mirror_target) | resource |
| [aws_egress_only_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/egress_only_internet_gateway) | resource |
| [aws_flow_log.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/flow_log) | resource |
| [aws_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/internet_gateway) | resource |
| [aws_internet_gateway_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/internet_gateway_attachment) | resource |
| [aws_main_route_table_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/main_route_table_association) | resource |
| [aws_nat_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway_eip_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/nat_gateway_eip_association) | resource |
| [aws_network_acl.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/network_acl) | resource |
| [aws_network_acl_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/network_acl_association) | resource |
| [aws_network_acl_rule.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/network_acl_rule) | resource |
| [aws_network_interface.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/network_interface) | resource |
| [aws_network_interface_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/network_interface_attachment) | resource |
| [aws_network_interface_permission.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/network_interface_permission) | resource |
| [aws_network_interface_sg_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/network_interface_sg_attachment) | resource |
| [aws_route.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/route) | resource |
| [aws_route_table.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/route_table) | resource |
| [aws_route_table_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/route_table_association) | resource |
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/security_group) | resource |
| [aws_security_group_rule.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/security_group_rule) | resource |
| [aws_subnet.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/subnet) | resource |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc) | resource |
| [aws_vpc_block_public_access_exclusion.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_block_public_access_exclusion) | resource |
| [aws_vpc_block_public_access_options.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_block_public_access_options) | resource |
| [aws_vpc_dhcp_options.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_dhcp_options) | resource |
| [aws_vpc_dhcp_options_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_dhcp_options_association) | resource |
| [aws_vpc_endpoint.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint_connection_accepter.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_connection_accepter) | resource |
| [aws_vpc_endpoint_connection_notification.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_connection_notification) | resource |
| [aws_vpc_endpoint_policy.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_policy) | resource |
| [aws_vpc_endpoint_private_dns.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_private_dns) | resource |
| [aws_vpc_endpoint_route_table_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_route_table_association) | resource |
| [aws_vpc_endpoint_security_group_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_security_group_association) | resource |
| [aws_vpc_endpoint_service.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_service) | resource |
| [aws_vpc_endpoint_service_allowed_principal.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_service_allowed_principal) | resource |
| [aws_vpc_endpoint_service_private_dns_verification.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_service_private_dns_verification) | resource |
| [aws_vpc_endpoint_subnet_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_endpoint_subnet_association) | resource |
| [aws_vpc_ipv4_cidr_block_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_ipv4_cidr_block_association) | resource |
| [aws_vpc_ipv6_cidr_block_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_ipv6_cidr_block_association) | resource |
| [aws_vpc_network_performance_metric_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_network_performance_metric_subscription) | resource |
| [aws_vpc_peering_connection.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_peering_connection) | resource |
| [aws_vpc_peering_connection_accepter.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_peering_connection_accepter) | resource |
| [aws_vpc_peering_connection_options.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_peering_connection_options) | resource |
| [aws_vpc_route_server.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_route_server) | resource |
| [aws_vpc_route_server_endpoint.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_route_server_endpoint) | resource |
| [aws_vpc_route_server_peer.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_route_server_peer) | resource |
| [aws_vpc_route_server_propagation.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_route_server_propagation) | resource |
| [aws_vpc_route_server_vpc_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_route_server_vpc_association) | resource |
| [aws_vpc_security_group_egress_rule.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_security_group_egress_rule) | resource |
| [aws_vpc_security_group_ingress_rule.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_security_group_ingress_rule) | resource |
| [aws_vpc_security_group_vpc_association.this](https://registry.terraform.io/providers/hashicorp/aws/6.13.0/docs/resources/vpc_security_group_vpc_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_network_acl"></a> [default\_network\_acl](#input\_default\_network\_acl) | Configuration block to set up a default network acl. | `any` | `{}` | no |
| <a name="input_default_route_table"></a> [default\_route\_table](#input\_default\_route\_table) | Configuration block to set up a default route table. | `any` | `{}` | no |
| <a name="input_default_security_group"></a> [default\_security\_group](#input\_default\_security\_group) | Configuration block to set up a default security group. | `any` | `{}` | no |
| <a name="input_default_subnet"></a> [default\_subnet](#input\_default\_subnet) | Configuration block to set up a default subnet. | `any` | `{}` | no |
| <a name="input_default_vpc"></a> [default\_vpc](#input\_default\_vpc) | Configuration block to set up a default vpc. | `any` | `{}` | no |
| <a name="input_default_vpc_dhcp_options"></a> [default\_vpc\_dhcp\_options](#input\_default\_vpc\_dhcp\_options) | Configuration block to set up a default vpc dhcp options. | `any` | `{}` | no |
| <a name="input_ec2_managed_prefix_list"></a> [ec2\_managed\_prefix\_list](#input\_ec2\_managed\_prefix\_list) | Configuration block to set up an EC2 managed prefix list. | `any` | `{}` | no |
| <a name="input_ec2_managed_prefix_list_entries"></a> [ec2\_managed\_prefix\_list\_entries](#input\_ec2\_managed\_prefix\_list\_entries) | List of configuration block to create entries for an EC2 managed prefix list. | `any` | `[]` | no |
| <a name="input_ec2_network_insights_analysis"></a> [ec2\_network\_insights\_analysis](#input\_ec2\_network\_insights\_analysis) | List of configuration blocks to set up network insights analysis for a path. | `any` | `[]` | no |
| <a name="input_ec2_network_insights_paths"></a> [ec2\_network\_insights\_paths](#input\_ec2\_network\_insights\_paths) | List of configuration blocks to set up network insights paths. | `any` | `[]` | no |
| <a name="input_ec2_subnet_cidr_reservations"></a> [ec2\_subnet\_cidr\_reservations](#input\_ec2\_subnet\_cidr\_reservations) | List of configuration blocks to create a cidr reservation for a subnet. | `any` | `[]` | no |
| <a name="input_ec2_traffic_mirror_filter_rules"></a> [ec2\_traffic\_mirror\_filter\_rules](#input\_ec2\_traffic\_mirror\_filter\_rules) | List of configuration blocks to create rules for an EC2 traffic mirror filter. | `any` | `[]` | no |
| <a name="input_ec2_traffic_mirror_filters"></a> [ec2\_traffic\_mirror\_filters](#input\_ec2\_traffic\_mirror\_filters) | List of configuration blocks to set up an EC2 traffic mirror filter. | `any` | `[]` | no |
| <a name="input_ec2_traffic_mirror_sessions"></a> [ec2\_traffic\_mirror\_sessions](#input\_ec2\_traffic\_mirror\_sessions) | List of configuration blocks to create an EC2 traffic mirror session. | `any` | `[]` | no |
| <a name="input_ec2_traffic_mirror_targets"></a> [ec2\_traffic\_mirror\_targets](#input\_ec2\_traffic\_mirror\_targets) | List of configuration blocks to set up targets for an EC2 traffic mirror. | `any` | `[]` | no |
| <a name="input_egress_only_internet_gateways"></a> [egress\_only\_internet\_gateways](#input\_egress\_only\_internet\_gateways) | List of configuration blocks to create an egress-only internet gateway. | `any` | `[]` | no |
| <a name="input_flow_logs"></a> [flow\_logs](#input\_flow\_logs) | List of configuration blocks to set up a vpc/subnet/eni/transit gateway/transit gateway attachment flow log. | `any` | `[]` | no |
| <a name="input_internet_gateway_attachments"></a> [internet\_gateway\_attachments](#input\_internet\_gateway\_attachments) | List of configuration blocks to create internet gateway attachments. | `any` | `[]` | no |
| <a name="input_internet_gateways"></a> [internet\_gateways](#input\_internet\_gateways) | List of configuration blocks to create an internet gateway. | `any` | `[]` | no |
| <a name="input_main_route_table_association"></a> [main\_route\_table\_association](#input\_main\_route\_table\_association) | Configuration block to associate a main route table with a vpc. | `any` | `{}` | no |
| <a name="input_nat_gateway_eip_associations"></a> [nat\_gateway\_eip\_associations](#input\_nat\_gateway\_eip\_associations) | List of configuration blocks to create nat gateway eip associations. | `any` | `[]` | no |
| <a name="input_nat_gateways"></a> [nat\_gateways](#input\_nat\_gateways) | List of configuration blocks to create a nat gateway. | `any` | `[]` | no |
| <a name="input_network_acl_associations"></a> [network\_acl\_associations](#input\_network\_acl\_associations) | List of configuration blocks to associate a network acl with a subnet. | `any` | `[]` | no |
| <a name="input_network_acl_rules"></a> [network\_acl\_rules](#input\_network\_acl\_rules) | List of configuration blocks to create rules for a network acl. | `any` | `[]` | no |
| <a name="input_network_acls"></a> [network\_acls](#input\_network\_acls) | List of configuration blocks to create a network acl. | `any` | `[]` | no |
| <a name="input_network_interface_attachments"></a> [network\_interface\_attachments](#input\_network\_interface\_attachments) | List of configuration blocks to attach a network interface (eni) to an EC2 instance. | `any` | `[]` | no |
| <a name="input_network_interface_permissions"></a> [network\_interface\_permissions](#input\_network\_interface\_permissions) | List of configuration blocks to grant cross-account access to an ENI. | `any` | `[]` | no |
| <a name="input_network_interface_sg_attachments"></a> [network\_interface\_sg\_attachments](#input\_network\_interface\_sg\_attachments) | List of configuration blocks to attach a security group to a network interface (eni). | `any` | `[]` | no |
| <a name="input_network_interfaces"></a> [network\_interfaces](#input\_network\_interfaces) | List of configuration blocks to create a network interface (eni). | `any` | `[]` | no |
| <a name="input_route_table_associations"></a> [route\_table\_associations](#input\_route\_table\_associations) | List of configuration blocks to create an association between a route table and a subnet or a route table and an internet gateway or virtual private gateway. | `any` | `[]` | no |
| <a name="input_route_tables"></a> [route\_tables](#input\_route\_tables) | List of configuration blocks to create a routing table. | `any` | `[]` | no |
| <a name="input_routes"></a> [routes](#input\_routes) | List of configuration blocks to create an entry in a routing table. | `any` | `[]` | no |
| <a name="input_security_group_rules"></a> [security\_group\_rules](#input\_security\_group\_rules) | List of configuration blocks to create an ingress or egress group and add it to a security group. | `any` | `[]` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | List of configuration blocks to create a security group. | `any` | `[]` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | List of configuration blocks to create a subnet. | `any` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | Configuration block to create a vpc. | `any` | `{}` | no |
| <a name="input_vpc_block_public_access_exclusion"></a> [vpc\_block\_public\_access\_exclusion](#input\_vpc\_block\_public\_access\_exclusion) | Configuration block to configure a VPC Block Public Access Exclusion. | `any` | `{}` | no |
| <a name="input_vpc_block_public_access_options"></a> [vpc\_block\_public\_access\_options](#input\_vpc\_block\_public\_access\_options) | Configuration block to configure a VPC Block Public Access Options. | `any` | `{}` | no |
| <a name="input_vpc_dhcp_options"></a> [vpc\_dhcp\_options](#input\_vpc\_dhcp\_options) | Configuration block to set up dhcp options for a vpc. | `any` | `{}` | no |
| <a name="input_vpc_dhcp_options_associations"></a> [vpc\_dhcp\_options\_associations](#input\_vpc\_dhcp\_options\_associations) | List of configuration blocks to associate dhcp options with a vpc. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_connection_accepters"></a> [vpc\_endpoint\_connection\_accepters](#input\_vpc\_endpoint\_connection\_accepters) | List of configuration blocks to create a vpc endpoint connection accepter. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_connection_notifications"></a> [vpc\_endpoint\_connection\_notifications](#input\_vpc\_endpoint\_connection\_notifications) | List of configuration blocks to set up notifications for a vpc endpoint connection. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_policies"></a> [vpc\_endpoint\_policies](#input\_vpc\_endpoint\_policies) | List of configuration blocks to create policies for a vpc endpoint. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_private_dns"></a> [vpc\_endpoint\_private\_dns](#input\_vpc\_endpoint\_private\_dns) | List of configuration blocks to enable private DNS for a vpc endpoint. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_route_table_associations"></a> [vpc\_endpoint\_route\_table\_associations](#input\_vpc\_endpoint\_route\_table\_associations) | List of configuration blocks to associate a route table with a vpc endpoint. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_security_group_associations"></a> [vpc\_endpoint\_security\_group\_associations](#input\_vpc\_endpoint\_security\_group\_associations) | List of configuration blocks to associate a security group with a vpc endpoint. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_service_allowed_principals"></a> [vpc\_endpoint\_service\_allowed\_principals](#input\_vpc\_endpoint\_service\_allowed\_principals) | List of configuration blocks to allow a principal to discover a VPC endpoint service. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_service_private_dns_verifications"></a> [vpc\_endpoint\_service\_private\_dns\_verifications](#input\_vpc\_endpoint\_service\_private\_dns\_verifications) | List of configuration blocks to verify private DNS for a vpc endpoint service. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_services"></a> [vpc\_endpoint\_services](#input\_vpc\_endpoint\_services) | List of configuration blocks to a create vpc endpoint service. | `any` | `[]` | no |
| <a name="input_vpc_endpoint_subnet_associations"></a> [vpc\_endpoint\_subnet\_associations](#input\_vpc\_endpoint\_subnet\_associations) | List of configuration blocks to associate a subnet with a vpc endpoint. | `any` | `[]` | no |
| <a name="input_vpc_endpoints"></a> [vpc\_endpoints](#input\_vpc\_endpoints) | List of configuration blocks to create vpc endpoints. | `any` | `[]` | no |
| <a name="input_vpc_ipv4_cidr_block_associations"></a> [vpc\_ipv4\_cidr\_block\_associations](#input\_vpc\_ipv4\_cidr\_block\_associations) | List of configuration blocks to associate additional IPv4 CIDR blocks with a vpc. | `any` | `[]` | no |
| <a name="input_vpc_ipv6_cidr_block_associations"></a> [vpc\_ipv6\_cidr\_block\_associations](#input\_vpc\_ipv6\_cidr\_block\_associations) | List of configuration blocks to associate additional IPv6 CIDR blocks with a vpc. | `any` | `[]` | no |
| <a name="input_vpc_network_performance_metric_subscriptions"></a> [vpc\_network\_performance\_metric\_subscriptions](#input\_vpc\_network\_performance\_metric\_subscriptions) | List of configuration blocks to create a network performance metric subscriptions. | `any` | `[]` | no |
| <a name="input_vpc_peering_connections"></a> [vpc\_peering\_connections](#input\_vpc\_peering\_connections) | List of configuration blocks to set up a vpc peering connection. | `any` | `[]` | no |
| <a name="input_vpc_peering_connections_accepters"></a> [vpc\_peering\_connections\_accepters](#input\_vpc\_peering\_connections\_accepters) | List of configuration blocks to manage the accepter's side of a vpc peering connection. | `any` | `[]` | no |
| <a name="input_vpc_peering_connections_options"></a> [vpc\_peering\_connections\_options](#input\_vpc\_peering\_connections\_options) | List of configuration blocks to manage vpc peering connection options. | `any` | `[]` | no |
| <a name="input_vpc_route_server_endpoints"></a> [vpc\_route\_server\_endpoints](#input\_vpc\_route\_server\_endpoints) | List of configuration blocks to create endpoints for vpc route servers. | `any` | `[]` | no |
| <a name="input_vpc_route_server_peers"></a> [vpc\_route\_server\_peers](#input\_vpc\_route\_server\_peers) | List of configuration blocks to create vpc route server peers. | `any` | `[]` | no |
| <a name="input_vpc_route_server_propagations"></a> [vpc\_route\_server\_propagations](#input\_vpc\_route\_server\_propagations) | List of configuration blocks to create vpc route server propagations. | `any` | `[]` | no |
| <a name="input_vpc_route_server_vpc_associations"></a> [vpc\_route\_server\_vpc\_associations](#input\_vpc\_route\_server\_vpc\_associations) | List of configuration blocks to create vpc associations for vpc route servers. | `any` | `[]` | no |
| <a name="input_vpc_route_servers"></a> [vpc\_route\_servers](#input\_vpc\_route\_servers) | List of configuration blocks to create vpc route servers. | `any` | `[]` | no |
| <a name="input_vpc_security_group_egress_rules"></a> [vpc\_security\_group\_egress\_rules](#input\_vpc\_security\_group\_egress\_rules) | List of configuration blocks to create an egress rules for a security group. | `any` | `[]` | no |
| <a name="input_vpc_security_group_ingress_rules"></a> [vpc\_security\_group\_ingress\_rules](#input\_vpc\_security\_group\_ingress\_rules) | List of configuration blocks to create an ingress rules for a security group. | `any` | `[]` | no |
| <a name="input_vpc_security_group_vpc_associations"></a> [vpc\_security\_group\_vpc\_associations](#input\_vpc\_security\_group\_vpc\_associations) | List of configuration blocks to associate a security group with a vpc. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_ids"></a> [security\_group\_ids](#output\_security\_group\_ids) | List of IDs of the created security groups. |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | ARN of the created VPC. |
<!-- END_TF_DOCS -->
