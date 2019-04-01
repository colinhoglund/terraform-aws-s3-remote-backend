resource "random_id" "tfstate_suffix" {
  byte_length = 8
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "terraform-state-${random_id.tfstate_suffix.hex}"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}

resource "aws_dynamodb_table" "tfstate" {
  name           = "terraform-state-lock-${random_id.tfstate_suffix.hex}"
  read_capacity  = "${var.read_capacity}"
  write_capacity = "${var.write_capacity}"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  server_side_encryption {
    enabled = true
  }
}
