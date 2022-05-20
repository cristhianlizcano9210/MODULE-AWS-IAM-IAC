# lambda_permissions

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| api_gateway_rest_api_execution_arn | The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path | string | `""` | no |
| function_name | A unique name for your Lambda Function | string | `""` | no |
| create_permissions_for_api_gateway | Whether to give API Gateway permissions to invoke a lambda function | bool | `true` | no |
| create_permissions_for_cloudwatch | Whether to give CloudWatch permissions to invoke a lambda function | bool | `true` | no |
| cloudwatch_event_arn | The Amazon Resource Name (ARN) of the event | string | `""` | no |
| create_permissions_for_sns_topic | Whether to give to a SNS topic permissions to invoke a lambda function | bool | `true` | no |
| sns_topic_arn | The Amazon Resource Name (ARN) of the SNS topic | string | `""` | no |
