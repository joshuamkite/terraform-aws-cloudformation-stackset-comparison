# terraform-aws-cloudformation-stackset-comparison 

As a counterpart to my [CloudFormation StackSet Demo
](https://github.com/joshuamkite/CloudFormation-StackSet-Demo) demo deploying the same resources with Terraform (Open Tofu).

## Usage

### Preview what Tofu proposes to do (optional)
```bash
tofu plan 
```

### Deploy resources
```bash
tofu apply
```

### Teardown resources
```bash
tofu destroy
```

## Requirements

| Name                                                                      | Version  |
| ------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws)                   | >= 5.0.0 |

## Providers

| Name                                                                           | Version |
| ------------------------------------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws)                              | 5.46.0  |
| <a name="provider_aws.west_two"></a> [aws.west\_two](#provider\_aws.west\_two) | 5.46.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                           | Type        |
| ------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_s3_bucket.west_one](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)                | resource    |
| [aws_s3_bucket.west_two](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)                | resource    |
| [aws_caller_identity.west_one](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_caller_identity.west_two](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.west_one](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region)                   | data source |
| [aws_region.west_two](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region)                   | data source |

## Inputs

| Name                                           | Description                   | Type          | Default                                                                                  | Required |
| ---------------------------------------------- | ----------------------------- | ------------- | ---------------------------------------------------------------------------------------- | :------: |
| <a name="input_tags"></a> [tags](#input\_tags) | tags applied to all resources | `map(string)` | <pre>{<br>  "Environment": "test",<br>  "Project": "CloudFormationComparison"<br>}</pre> |    no    |

## Outputs

| Name                                                                                                                            | Description           |
| ------------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| <a name="output_aws_s3_bucket_west_one_name"></a> [aws\_s3\_bucket\_west\_one\_name](#output\_aws\_s3\_bucket\_west\_one\_name) | Name of the S3 bucket |
| <a name="output_aws_s3_bucket_west_two_name"></a> [aws\_s3\_bucket\_west\_two\_name](#output\_aws\_s3\_bucket\_west\_two\_name) | Name of the S3 bucket |
