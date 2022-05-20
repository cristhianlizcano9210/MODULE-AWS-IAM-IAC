# Local variables
locals {
  create_lambda_permissions_for_api_gateway = var.create_lambda_permissions_for_api_gateway && var.lambda_function_name != "" && var.lambda_permissions_api_gateway_rest_api_execution_arn != ""
  create_lambda_permissions_for_cloudwatch  = var.create_lambda_permissions_for_cloudwatch && var.lambda_function_name != "" && var.lambda_permissions_cloudwatch_event_arn != ""
  create_lambda_permissions_for_sns_topic   = var.create_lambda_permissions_for_sns_topic && var.lambda_function_name != "" && var.lambda_permissions_sns_topic_arn != ""
}

module "lambda_permissions" {
  source = "./modules/lambda_permissions"

  function_name                      = var.lambda_function_name
  create_permissions_for_api_gateway = local.create_lambda_permissions_for_api_gateway
  api_gateway_rest_api_execution_arn = var.lambda_permissions_api_gateway_rest_api_execution_arn
  create_permissions_for_cloudwatch  = local.create_lambda_permissions_for_cloudwatch
  cloudwatch_event_arn               = var.lambda_permissions_cloudwatch_event_arn
  create_permissions_for_sns_topic   = var.create_lambda_permissions_for_sns_topic
  sns_topic_arn                      = var.lambda_permissions_sns_topic_arn
}

module "role" {
  source = "./modules/role"

  create_role              = var.create_role
  attach_admin_policy      = var.role_attach_admin_policy
  attach_poweruser_policy  = var.role_attach_poweruser_policy
  attach_readonly_policy   = var.role_attach_readonly_policy
  requires_mfa             = var.role_requires_mfa
  name                     = var.role_name
  path                     = var.role_path
  max_session_duration     = var.role_max_session_duration
  permissions_boundary_arn = var.role_permissions_boundary_arn
  custom_role_policy_arns  = var.custom_role_policy_arns
  trusted_role_arns        = var.data_trusted_role_arns
  trusted_role_services    = var.data_trusted_role_services
  tags                     = var.role_tags
}

module "policy" {
  source = "./modules/policy"

  create_policy = var.create_policy
  name          = var.policy_name
  path          = var.policy_path
  description   = var.policy_description
  policy        = var.policy
}

