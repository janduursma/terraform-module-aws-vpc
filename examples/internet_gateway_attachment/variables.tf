variable "internet_gateway_id" {
  description = "The ID of the internet gateway."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = null
}
