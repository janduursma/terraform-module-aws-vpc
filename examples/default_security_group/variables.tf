variable "egress" {
  description = "List of configuration blocks to create egress rules."
  type        = any
  default = [{
    cidr_blocks = ["0.0.0.0/0"]
    description = "demo"
    from_port   = 0
    protocol    = -1
    self        = true
    to_port     = 0
  }]
}

variable "ingress" {
  description = "List of configuration blocks to create ingress rules."
  type        = any
  default = [{
    cidr_blocks = ["0.0.0.0/0"]
    description = "demo"
    from_port   = 0
    protocol    = -1
    self        = true
    to_port     = 0
  }]
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = any
  default     = {}
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
  default     = null
}
