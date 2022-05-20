output "this_iam_role_arn" {
  description = "ARN of IAM role"
  value       = module.role.this_iam_role_arn
}

output "this_iam_role_name" {
  description = "Name of IAM role"
  value       = module.role.this_iam_role_name
}

output "this_iam_role_path" {
  description = "Path of IAM role"
  value       = module.role.this_iam_role_path
}


## Policy 

output "policy_id" {
  description = "The policy's ID"
  value       = module.policy.id
}

output "policy_arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = module.policy.arn
}

output "policy_description" {
  description = "The description of the policy"
  value       = module.policy.description
}

output "policy_name" {
  description = "The name of the policy"
  value       = module.policy.name
}

output "policy_path" {
  description = "The path of the policy in IAM"
  value       = module.policy.path
}

output "policy" {
  description = "The policy document"
  value       = module.policy.policy
}
