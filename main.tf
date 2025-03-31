# main.tf

provider "aws" {
  region = var.aws_region
}

# Create an S3 bucket with tags
resource "aws_s3_bucket" "terraform-code-bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"  # Use private ACL for the bucket
  tags   = var.bucket_tags  # Apply the tags defined in variables.tf
}

output "s3_bucket_name" {
  value = aws_s3_bucket.terraform-code-bucket.bucket
}

output "s3_bucket_tags" {
  value = aws_s3_bucket.terraform-code-bucket.tags
}
