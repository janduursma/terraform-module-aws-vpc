variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "route_table_id" {
  description = "The ID of the route table."
  type        = string
  default     = null
}

variable "vpc_endpoint_id" {
  description = "The ID of the VPC endpoint."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = null
}

