variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "route_server_id" {
  description = "The unique identifier for the route server to be associated."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = null
}
