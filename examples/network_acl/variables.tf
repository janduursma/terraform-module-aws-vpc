variable "egress" {
  description = "Specifies an egress rule."
  type        = any
  default = [{
    action     = "allow"
    cidr_block = "10.3.0.0/18"
    from_port  = 443
    protocol   = "tcp"
    rule_no    = 1
    to_port    = 443
  }]
}

variable "ingress" {
  description = "Specifies an ingress rule."
  type        = any
  default = [{
    action     = "allow"
    cidr_block = "10.3.0.0/18"
    from_port  = 80
    protocol   = "tcp"
    rule_no    = 2
    to_port    = 80
  }]

}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "subnet_ids" {
  description = "A list of Subnet IDs to apply the ACL to."
  type        = list(string)
  default     = null
}

variable "vpc_id" {
  description = "The ID of the associated VPC."
  type        = string
  default     = null
}
