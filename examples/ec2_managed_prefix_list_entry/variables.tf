variable "cidr_block" {
  description = "CIDR block of this entry."
  type        = string
  default     = "10.0.0.0/24"
}

variable "prefix_list_id" {
  description = "The ID of the prefix list."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}
