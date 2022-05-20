# Local variables
locals {
  create_permissions_for_api_gateway = var.create_permissions_for_api_gateway && var.function_name != "" && var.api_gateway_rest_api_execution_arn != ""
  create_permissions_for_cloudwatch  = var.create_permissions_for_cloudwatch && var.function_name != "" && var.cloudwatch_event_arn != ""
  create_permissions_for_sns_topic   = var.create_permissions_for_sns_topic && var.function_name != "" && var.sns_topic_arn != ""
}

resource "aws_lambda_permission" "allow_api_gateway" {
  count         = local.create_permissions_for_api_gateway ? 1 : 0
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.api_gateway_rest_api_execution_arn}/*/*/*"
  statement_id  = "AllowExecutionFromAPIGateway"
}

resource "aws_lambda_permission" "allow_cloudwatch" {
  count         = local.create_permissions_for_cloudwatch ? 1 : 0
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "events.amazonaws.com"
  source_arn    = var.cloudwatch_event_arn
  statement_id  = "AllowExecutionFromCloudWatch"
}

resource "aws_lambda_permission" "with_sns" {
  count         = local.create_permissions_for_sns_topic ? 1 : 0
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = var.sns_topic_arn
  statement_id  = "AllowExecutionFromSNS"
}
