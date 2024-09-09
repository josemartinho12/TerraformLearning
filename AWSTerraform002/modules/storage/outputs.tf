output "s3-bucket-id" {
  value = aws_s3_bucket.bucket-cloudtrail.id
  description = "Bucket ID"
}
output "s3-bucket-policy-id" {
  value = aws_s3_bucket_policy.cloudtrail-bucket-policy.id
  description = "Bucket policy ID"
}