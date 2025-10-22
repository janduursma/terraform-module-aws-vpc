output "vpc_arn" {
  description = "ARN of the created VPC."
  value       = module.vpc.vpc_arn
}
