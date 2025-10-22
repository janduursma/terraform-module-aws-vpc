data "aws_ec2_managed_prefix_list" "default" {
  name = "com.amazonaws.${var.region}.dynamodb"
}
