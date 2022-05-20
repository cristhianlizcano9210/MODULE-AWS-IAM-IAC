# iam-policy

Creates IAM policy.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
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
