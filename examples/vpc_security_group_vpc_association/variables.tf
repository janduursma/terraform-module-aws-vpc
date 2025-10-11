variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "security_group_id" {
  description = "The ID of the security group."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = null
}
