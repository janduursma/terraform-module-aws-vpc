variable "cidr_block" {
  description = "The network range to allow or deny."
  type        = string
  default     = "10.3.0.0/18"
}

variable "egress" {
  description = "Indicates whether this is an egress rule."
  type        = bool
  default     = false
}

variable "from_port" {
  description = "The from port to match."
  type        = number
  default     = 80
}

variable "network_acl_id" {
  description = "The ID of the network ACL to associate this rule with."
  type        = string
  default     = null
}

variable "protocol" {
  description = "The protocol. A value of -1 means all protocols."
  type        = string
  default     = "tcp"
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "rule_action" {
  description = "Indicates whether to allow or deny the traffic that matches the rule."
  type        = string
  default     = "allow"
}

variable "rule_number" {
  description = "The rule number for the entry."
  type        = number
  default     = 1
}

variable "to_port" {
  description = "The to port to match."
  type        = number
  default     = 80
}
