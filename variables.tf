variable "lambda_function_name" {
  description = "A unique name for your Lambda Function"
  type        = string
  default     = ""
}

variable "create_lambda_permissions_for_api_gateway" {
  description = "Whether to create lambda permission for API Gateway"
  type        = bool
  default     = false
}

variable "lambda_permissions_api_gateway_rest_api_execution_arn" {
  description = "The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path"
  type        = string
  default     = ""
}

variable "create_lambda_permissions_for_cloudwatch" {
  description = "Whether to give CloudWatch permissions to invoke a lambda function"
  type        = bool
  default     = true
}

variable "lambda_permissions_cloudwatch_event_arn" {
  description = "The Amazon Resource Name (ARN) of the event"
  type        = string
  default     = ""
}

variable "create_lambda_permissions_for_sns_topic" {
  description = "Whether to give to a SNS topic permissions to invoke a lambda function"
  type        = bool
  default     = true
}

variable "lambda_permissions_sns_topic_arn" {
  description = "The Amazon Resource Name (ARN) of the SNS topic"
  type        = string
  default     = ""
}

#variables de rol 

variable "create_role" {
  description = "Whether to create a role"
  type        = bool
  default     = false
}

variable "role_attach_admin_policy" {
  description = "Whether to attach an admin policy to a role"
  type        = bool
  default     = false
}

variable "role_attach_poweruser_policy" {
  description = "Whether to attach a poweruser policy to a role"
  type        = bool
  default     = false
}

variable "role_attach_readonly_policy" {
  description = "Whether to attach a readonly policy to a role"
  type        = bool
  default     = false
}

variable "role_requires_mfa" {
  description = "Whether role requires MFA"
  type        = bool
  default     = true
}

variable "role_name" {
  description = "IAM role name"
  type        = string
  default     = ""
}

variable "role_path" {
  description = "Path of IAM role"
  type        = string
  default     = "/"
}

variable "role_max_session_duration" {
  description = "Maximum CLI/API session duration in seconds between 3600 and 43200"
  type        = number
  default     = 3600
}

variable "role_permissions_boundary_arn" {
  description = "Permissions boundary ARN to use for IAM role"
  type        = string
  default     = ""
}

variable "custom_role_policy_arns" {
  description = "List of ARNs of IAM policies to attach to IAM role"
  type        = list(string)
  default     = []
}

variable "data_trusted_role_arns" {
  description = "ARNs of AWS entities who can assume these roles"
  type        = list(string)
  default     = []
}

variable "data_trusted_role_services" {
  description = "AWS Services that can assume these roles"
  type        = list(string)
  default     = []
}

variable "role_tags" {
  description = "A map of tags to add to IAM role resources"
  type        = map(string)
  default     = {}
}

## variables policy ###

variable "create_policy" {
  description = "Whether to create a policy"
  type        = bool
  default     = false
}

variable "policy_name" {
  description = "The name of the policy"
  type        = string
  default     = ""
}

variable "policy_path" {
  description = "The path of the policy in IAM"
  type        = string
  default     = "/"
}

variable "policy_description" {
  description = "The description of the policy"
  type        = string
  default     = ""
}

variable "policy" {
  description = "The policy in IAM (tpl file)"
  type        = any
  default     = null
}




