variable "default_network_acl_id" {
  description = "Network ACL ID to manage."
  type        = string
  default     = null
}

variable "egress" {
  description = "Configuration block for an egress rule."
  type        = any
  default = [{
    action     = "allow",
    cidr_block = "0.0.0.0/0",
    from_port  = 0,
    protocol   = -1,
    rule_no    = 1,
    to_port    = 0
  }]
}

variable "ingress" {
  description = "Configuration block for an ingress rule."
  type        = any
  default = [{
    action     = "allow",
    cidr_block = "0.0.0.0/0",
    from_port  = 0,
    protocol   = -1,
    rule_no    = 1,
    to_port    = 0
  }]
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "subnets_id" {
  description = "List of Subnet IDs to apply the ACL to."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = any
  default     = {}
}
