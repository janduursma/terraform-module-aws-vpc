variable "destination_cidr_block" {
  description = "Destination CIDR block to assign to the Traffic Mirror rule."
  type        = string
  default     = "10.0.0.0/8"
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "rule_action" {
  description = "Action to take (accept | reject) on the filtered traffic."
  type        = string
  default     = "accept"
}

variable "rule_number" {
  description = "Number of the Traffic Mirror rule."
  type        = number
  default     = 1
}

variable "source_cidr_block" {
  description = "Source CIDR block to assign to the Traffic Mirror rule."
  type        = string
  default     = "10.0.0.0/8"
}

variable "traffic_direction" {
  description = "Direction of traffic to be captured."
  type        = string
  default     = "egress"
}
