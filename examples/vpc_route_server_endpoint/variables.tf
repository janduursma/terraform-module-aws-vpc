variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "route_server_id" {
  description = "The ID of the route server for which to create an endpoint."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The ID of the subnet in which to create the route server endpoint."
  type        = string
  default     = null
}
