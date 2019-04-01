output "bucket" {
  description = "The name of the S3 bucket."
  value       = "${aws_s3_bucket.tfstate.bucket}"
}

output "dynamodb_table" {
  description = "The name of the DynamoDB table."
  value       = "${aws_dynamodb_table.tfstate.name}"
}
