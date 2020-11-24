provider "aws" {
  region  = "sa-east-1"
}

variable "bucket_names" {
  description = "Bucket names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

resource "aws_s3_bucket" "bucket" {
  count = length(var.bucket_names)

  bucket = "my-tf-test-bucket-${var.bucket_names[count.index]}"
  acl    = "private"

  tags = {
    Name        = var.bucket_names[count.index]
    Environment = "Dev"
  }
}