variable "function_name" {
  description = "A unique name for your Lambda Function"
  type        = string
  default     = ""
}

variable "create_permissions_for_api_gateway" {
  description = "Whether to give API Gateway permissions to invoke a lambda function"
  type        = bool
  default     = true
}

variable "api_gateway_rest_api_execution_arn" {
  description = "The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path"
  type        = string
  default     = ""
}

variable "create_permissions_for_cloudwatch" {
  description = "Whether to give CloudWatch permissions to invoke a lambda function"
  type        = bool
  default     = true
}

variable "cloudwatch_event_arn" {
  description = "The Amazon Resource Name (ARN) of the event"
  type        = string
  default     = ""
}

variable "create_permissions_for_sns_topic" {
  description = "Whether to give to a SNS topic permissions to invoke a lambda function"
  type        = bool
  default     = true
}

variable "sns_topic_arn" {
  description = "The Amazon Resource Name (ARN) of the SNS topic"
  type        = string
  default     = ""
}
