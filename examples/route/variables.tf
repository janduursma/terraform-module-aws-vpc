variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "route_table_id" {
  description = "The ID of the routing table."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The ID of the associated VPC."
  type        = string
  default     = null
}
