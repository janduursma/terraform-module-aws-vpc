variable "network_acl_id" {
  description = "The ID of the network ACL."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "subnet_id" {
  description = "The ID of the associated Subnet."
  type        = string
  default     = null
}
