variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "vpc_endpoint_service_id" {
  description = "The ID of the VPC endpoint service to allow permission."
  type        = string
  default     = null
}
