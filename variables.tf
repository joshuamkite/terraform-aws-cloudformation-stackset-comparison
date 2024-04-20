variable "tags" {
  type        = map(string)
  description = "tags applied to all resources"
  default = {
    Environment = "test"
    Project     = "CloudFormationComparison"
  }
}
