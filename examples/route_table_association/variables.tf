variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "subnet_id" {
  description = "A subnet ID to create the network interface in."
  type        = string
  default     = null
}
