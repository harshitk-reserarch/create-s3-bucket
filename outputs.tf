output "bucket_hostname" {
  description = "name of s3 bucket"
  value       = aws_s3_bucket.my_bucket.bucket
}
