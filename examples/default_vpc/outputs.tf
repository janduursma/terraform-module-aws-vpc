output "vpc_arn" {
  description = "ARN of the created VPC."
  value       = one(module.vpc.vpc_arn)
}
