variable "cidr_block" {
  description = "The CIDR block for the reservation."
  type        = string
  default     = "10.0.0.16/28"
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "reservation_type" {
  description = "The type of reservation to create."
  type        = string
  default     = "prefix"
}

variable "subnet_id" {
  description = "The ID of the subnet to create the reservation for."
  type        = string
  default     = null
}
