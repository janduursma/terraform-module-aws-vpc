variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "peer_owner_id" {
  description = "The AWS account ID of the target peer VPC."
  type        = string
  default     = null
}

variable "peer_vpc_id" {
  description = "The ID of the target VPC with which you are creating the VPC Peering Connection."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = null
}
