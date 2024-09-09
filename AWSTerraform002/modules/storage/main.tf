resource "aws_s3_bucket" "bucket-cloudtrail" {
  bucket        = var.bucket
  force_destroy = true
 
  tags = {
    Name        = var.bucket-tag-name
    Environment = var.bucket-tag-environment
  }
}
 
resource "aws_s3_bucket_versioning" "cloudtrail-bucket-version" {
    bucket = aws_s3_bucket.bucket-cloudtrail.id
 
    versioning_configuration {
      status = var.bucket-versioning-status
    }
}
 
resource "aws_s3_bucket_policy" "cloudtrail-bucket-policy" {
  bucket = aws_s3_bucket.bucket-cloudtrail.id
 
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = {
          Service = "cloudtrail.amazonaws.com"
        },
        Action    = "s3:GetBucketAcl",
        Resource  = aws_s3_bucket.bucket-cloudtrail.arn
      },
      {
        Effect    = "Allow",
        Principal = {
          Service = "cloudtrail.amazonaws.com"
        },
        Action    = "s3:PutObject",
        Resource  = "${aws_s3_bucket.bucket-cloudtrail.arn}/*",
        Condition = {
          StringEquals = {
            "s3:x-amz-acl" = "bucket-owner-full-control"
          }
        }
      }
    ]
  })
}