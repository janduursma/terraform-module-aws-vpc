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
