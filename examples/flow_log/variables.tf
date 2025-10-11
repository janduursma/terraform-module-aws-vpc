variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "VPC ID to attach to."
  type        = string
  default     = null
}
