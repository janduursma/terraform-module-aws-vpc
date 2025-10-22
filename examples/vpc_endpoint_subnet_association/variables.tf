variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "subnet_id" {
  description = "The ID of the subnet to be associated with the VPC endpoint."
  type        = string
  default     = null
}

variable "vpc_endpoint_id" {
  description = "The ID of the VPC endpoint with which the subnet will be associated."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = null
}
