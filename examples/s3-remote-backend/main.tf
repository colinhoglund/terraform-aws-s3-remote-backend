module "s3-remote-backend" {
  source = "colinhoglund/s3-remote-backend/aws"

  tags = {
    Owner = "your-name-here"
  }
}
