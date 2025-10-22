variable "description" {
  description = "A description of the filter."
  type        = string
  default     = "Example traffic mirror filter for subnet 10.0.0.16/28"
}

variable "network_services" {
  description = "List of amazon network services that should be mirrored."
  type        = list(string)
  default     = ["amazon-dns"]
}


variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}
