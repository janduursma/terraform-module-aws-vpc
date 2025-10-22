variable "path_source" {
  description = "ID or ARN of the resource which is the source of the path."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}
