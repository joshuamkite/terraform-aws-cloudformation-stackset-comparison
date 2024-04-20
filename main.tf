resource "aws_s3_bucket" "west_one" {
  bucket = "my-simple-bucket-${data.aws_caller_identity.west_one.account_id}-${data.aws_region.west_one.name}"
}

resource "aws_s3_bucket" "west_two" {
  provider = aws.west_two
  bucket   = "my-simple-bucket-${data.aws_caller_identity.west_two.account_id}-${data.aws_region.west_two.name}"
}

data "aws_caller_identity" "west_one" {}

data "aws_region" "west_one" {}

data "aws_caller_identity" "west_two" {
  provider = aws.west_two
}

data "aws_region" "west_two" {
  provider = aws.west_two
}
