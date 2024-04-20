terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
}

# The default provider configuration; resources that begin with `aws_` will use
# it as the default, and it can be referenced as `aws`.
provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = var.tags
  }
}

# Additional provider configuration for west region; resources can
# reference this as `aws.west_two`.
provider "aws" {
  alias  = "west_two"
  region = "eu-west-2"
  default_tags {
    tags = var.tags
  }
}
