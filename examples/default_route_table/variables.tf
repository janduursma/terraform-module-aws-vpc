variable "default_route_table_id" {
  description = "ID of the default route table."
  type        = string
  default     = null
}

variable "region" {
  description = "Region where this resource will be managed."
  type        = string
  default     = "us-west-2"
}

variable "routes" {
  description = "List of configuration blocks of routes."
  type        = any
  default = [{
    cidr_block = "10.0.1.0/24"
    gateway_id = "demo-1"
    }, {
    cidr_block      = "0.0.0.0/0"
    ipv6_cidr_block = "::/0"
    gateway_id      = "demo-2"
  }]
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = any
  default     = {}
}
