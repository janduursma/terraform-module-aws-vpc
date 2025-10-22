variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "The ID of the associated VPC."
  type        = string
  default     = null
}
