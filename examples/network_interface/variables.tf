variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "subnet_id" {
  description = "Subnet ID to create the ENI in."
  type        = string
  default     = null
}
