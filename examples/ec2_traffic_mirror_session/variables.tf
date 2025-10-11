variable "network_interface_id" {
  description = "ID of the source network interface."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "session_number" {
  description = "The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions."
  type        = number
  default     = 1
}
