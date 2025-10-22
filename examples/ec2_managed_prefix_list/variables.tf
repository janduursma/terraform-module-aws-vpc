variable "address_family" {
  description = "Address family (IPv4 or IPv6) of this prefix list."
  type        = string
  default     = "IPv4"
}

variable "entries" {
  description = "List of configuration blocks for prefix list entry."
  type        = any
  default = [{
    cidr        = "10.0.0.0/24"
    description = "Primary"
  }]
}

variable "max_entries" {
  description = "Maximum number of entries that this prefix list can contain."
  type        = number
  default     = 5
}

variable "name" {
  description = "Name of the prefix list."
  type        = string
  default     = "All VPC CIDRs"
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
