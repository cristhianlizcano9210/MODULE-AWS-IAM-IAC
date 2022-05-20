# bbog-dig-aws-iam-iac
Terraform module for AWS IAM.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| lambda_function_name | A unique name for your Lambda Function | string | `""` | no |
| create_lambda_permissions_for_api_gateway | Whether to create lambda permission for API Gateway | bool | `false` | no |
| lambda_permissions_api_gateway_rest_api_execution_arn | The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path | string | `""` | no |
| create_lambda_permissions_for_cloudwatch | Whether to give CloudWatch permissions to invoke a lambda function | bool | `false` | no |
| lambda_permissions_cloudwatch_event_arn | The Amazon Resource Name (ARN) of the event | string | `""` | no |
| create_lambda_permissions_for_sns_topic | Whether to give to a SNS topic permissions to invoke a lambda function | bool | `false` | no |
| lambda_permissions_sns_topic_arn | The Amazon Resource Name (ARN) of the SNS topic | string | `""` | no |


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Role

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| admin\_role\_policy\_arn | Policy ARN to use for admin role | string | `"arn:aws:iam::aws:policy/AdministratorAccess"` | yes |
| attach\_admin\_policy | Whether to attach an admin policy to a role | bool | `"false"` | no |
| attach\_poweruser\_policy | Whether to attach a poweruser policy to a role | bool | `"false"` | no |
| attach\_readonly\_policy | Whether to attach a readonly policy to a role | bool | `"false"` | no |
| create\_role | Whether to create a role | bool | `"false"` | no |
| custom\_role\_policy\_arns | List of ARNs of IAM policies to attach to IAM role | list(string) | `[]` | no |
| max\_session\_duration | Maximum CLI/API session duration in seconds between 3600 and 43200 | number | `"3600"` | no |
| mfa\_age | Max age of valid MFA (in seconds) for roles which require MFA | number | `"86400"` | no |
| poweruser\_role\_policy\_arn | Policy ARN to use for poweruser role | string | `"arn:aws:iam::aws:policy/PowerUserAccess"` | no |
| readonly\_role\_policy\_arn | Policy ARN to use for readonly role | string | `"arn:aws:iam::aws:policy/ReadOnlyAccess"` | no |
| role\_name | IAM role name | string | `""` | no |
| role\_path | Path of IAM role | string | `"/"` | no |
| role\_permissions\_boundary\_arn | Permissions boundary ARN to use for IAM role | string | `""` | no |
| role\_requires\_mfa | Whether role requires MFA | bool | `"true"` | no |
| role_tags | A map of tags to add to IAM role resources | map(string) | `{}` | no |
| data_trusted\_role\_arns | ARNs of AWS entities who can assume these roles | list(string) | `[]` | no |
| data_trusted\_role\_services | AWS Services that can assume these roles | list(string) | `[]` | yes |

## Outputs of Role

| Name | Description |
|------|-------------|
| role\_requires\_mfa | Whether IAM role requires MFA |
| this\_iam\_role\_arn | ARN of IAM role |
| this\_iam\_role\_name | Name of IAM role |
| this\_iam\_role\_path | Path of IAM role |


## policy 

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create_policy | Whether to create a policy | bool | false | yes |
| policy_name | The name of the policy | string | "" | no |
| policy_path | The path of the policy in IAM | string | "/" | no |
| policy_description | The description of the policy | string | "" | no |
| policy | The policy in IAM (tpl file) | any | null | yes |

## Outputs of Policy 

| Name | Description |
|------|-------------|
| policy_id | The policy's ID |
| policy_arn | The ARN assigned by AWS to this policy |
| policy_description | The description of the policy |
| policy_name | The name of the policy |
| policy_path | The path of the policy in IAM |
| policy | The policy document |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

