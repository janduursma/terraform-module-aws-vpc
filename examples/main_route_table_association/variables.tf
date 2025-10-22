variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "route_table_id" {
  description = "The ID of the Route Table to set as the new main route table for the target VPC."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "VPC ID to attach to."
  type        = string
  default     = null
}
