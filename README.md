# terraform-aws-s3-remote-backend

Terraform module that creates resources for S3 remote backend

## Features

- Store Terraform state in private S3 buckets
- Use DynamoDB for state locking and consistency checking
- Server-side encryption for both S3 and DynamoDB

## Usage

    module "s3-remote-state-backend" {
      source = "github.com/colinhoglund/terraform-aws-s3-remote-backend?ref=master"
    }
