variable "allocation_id" {
  description = "The ID of the Elastic IP Allocation to associate with the NAT Gateway."
  type        = string
  default     = null
}

variable "nat_gateway_id" {
  description = "The ID of the NAT Gateway to associate the Elastic IP Allocation to."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "subnet_id" {
  description = "The Subnet ID of the subnet in which to place the NAT Gateway."
  type        = string
  default     = null
}
