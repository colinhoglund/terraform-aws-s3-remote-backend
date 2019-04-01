output "bucket" {
  value = "${aws_s3_bucket.tfstate.bucket}"
}

output "dynamodb_table" {
  value = "${aws_dynamodb_table.tfstate.name}"
}
