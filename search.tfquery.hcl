# This tells Terraform to scan AWS for all S3 buckets
list "aws_s3_bucket" "all_my_buckets" {
  provider = aws
}
