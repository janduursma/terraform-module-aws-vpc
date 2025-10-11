variable "cidr_block" {
  description = "The IPv4 CIDR block for the VPC."
  type        = string
  default     = "10.0.1.0/24"
}

variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}
