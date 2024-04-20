output "aws_s3_bucket_west_one_name" {
  value       = aws_s3_bucket.west_one.bucket
  description = "Name of the S3 bucket"
}

output "aws_s3_bucket_west_two_name" {
  value       = aws_s3_bucket.west_two.bucket
  description = "Name of the S3 bucket"
}

