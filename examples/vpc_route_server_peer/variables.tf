variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "subnet_id" {
  description = "The ID of the subnet in which to create the route server endpoint."
  type        = string
  default     = null
}
