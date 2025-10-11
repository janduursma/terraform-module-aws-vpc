variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "The VPC ID to create in."
  type        = string
  default     = null
}
