provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "your_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_public_access_block" "your_bucket" {
  bucket = aws_s3_bucket.your_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "your_bucket" {
  bucket = aws_s3_bucket.your_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "your_bucket" {
  bucket = aws_s3_bucket.your_bucket.id

  target_bucket = aws_s3_bucket.your_bucket.id
  target_prefix = "access-logs/"
}
