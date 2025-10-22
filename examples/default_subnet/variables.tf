variable "assign_ipv6_address_on_creation" {
  description = "Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address."
  type        = bool
  default     = true
}

variable "availability_zone" {
  description = "AZ for the subnet."
  type        = string
  default     = "us-west-2a"
}

variable "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address"
  type        = bool
  default     = true
}

variable "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames to assign to instances in the subnet at launch."
  type        = string
  default     = "resource-name"
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = any
  default     = {}
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
  default     = null
}
