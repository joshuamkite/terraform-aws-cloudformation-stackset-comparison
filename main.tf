resource "aws_s3_bucket" "west_one" {
  bucket = local.s3_bucket_name_west_one
}

resource "aws_s3_bucket" "west_two" {
  provider = aws.west_two
  bucket   = local.s3_bucket_name_west_two
}

data "aws_caller_identity" "west_one" {}

data "aws_region" "west_one" {}

data "aws_caller_identity" "west_two" {
  provider = aws.west_two
}

data "aws_region" "west_two" {
  provider = aws.west_two
}

locals {
  s3_bucket_name_west_one = "my-simple-bucket-${data.aws_caller_identity.west_one.account_id}-${data.aws_region.west_one.name}"

  s3_bucket_name_west_two = "my-simple-bucket-${data.aws_caller_identity.west_two.account_id}-${data.aws_region.west_two.name}"
}
