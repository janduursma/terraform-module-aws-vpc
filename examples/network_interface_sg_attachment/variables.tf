variable "network_interface_id" {
  description = "The ID of the network interface."
  type        = string
  default     = null
}

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

variable "subnet_id" {
  description = "A subnet ID to create the network interface in."
  type        = string
  default     = null
}
