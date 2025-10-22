output "security_group_ids" {
  description = "List of IDs of the created security groups."

  value = [for security_group in aws_security_group.this : security_group.id]
}

output "vpc_arn" {
  description = "ARN of the created VPC."
  value       = length(keys(var.vpc)) > 0 ? aws_vpc.this[0].arn : null
}
