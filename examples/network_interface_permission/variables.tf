variable "aws_account_id" {
  description = "The Amazon Web Services account ID."
  type        = string
  default     = null
}

variable "network_interface_id" {
  description = "The ID of the network interface."
  type        = string
  default     = null
}

variable "permission" {
  description = "The type of permission to grant. Valid values are INSTANCE-ATTACH or EIP-ASSOCIATE."
  type        = string
  default     = "INSTANCE-ATTACH"
}

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

