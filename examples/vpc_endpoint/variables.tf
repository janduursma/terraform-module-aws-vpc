variable "region" {
  description = "AWS region."
  type        = string
  default     = "us-west-2"
}

variable "vpc_id" {
  description = "The ID of the VPC to which we would like to associate a DHCP Options Set."
  type        = string
  default     = null
}
