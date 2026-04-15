output "bucket_hostname" {
  description = "name of s3 bucket"
  value       = aws_s3_bucket.your_bucket.bucket
}
