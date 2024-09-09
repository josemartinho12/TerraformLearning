resource "aws_cloudtrail" "cloudtrail" {
  depends_on                    = [var.s3-bucket-policy-id]
  name                          = var.cloudtrail-name
  s3_bucket_name                = var.s3-bucket-id
  s3_key_prefix                 = "prefix"
  include_global_service_events = false
}
 
