variable "availability_zone" {
  description = "AZ for the subnet."
  type        = string
  default     = "us-west-2a"
}

variable "cidr_block" {
  description = "The IPv4 CIDR block for the subnet."
  type        = string
  default     = "10.0.1.0/24"
}

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
