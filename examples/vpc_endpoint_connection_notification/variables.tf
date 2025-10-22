variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "vpc_endpoint_service_id" {
  description = "AWS VPC Endpoint Service ID."
  type        = string
  default     = null
}
