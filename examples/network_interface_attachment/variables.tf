variable "device_index" {
  description = "Network interface index (int)."
  type        = number
  default     = 0
}

variable "instance_id" {
  description = "Instance ID to attach."
  type        = string
  default     = null
}

variable "network_interface_id" {
  description = "ENI ID to attach."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "subnet_id" {
  description = "A subnet ID to create the network interface in."
  type        = string
  default     = null
}
