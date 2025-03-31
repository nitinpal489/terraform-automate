# variables.tf

variable "aws_region" {
  description = "The AWS region to create the resources in"
  type        = string
  default     = "us-east-1"  # You can set this to your preferred AWS region
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "bucket_tags" {
  description = "A map of tags to apply to the S3 bucket"
  type        = map(string)
  default = {
    project     = "healthcare-components"
    application = "components"
    module      = "terraform"
    environment = "dev"
  }
}
