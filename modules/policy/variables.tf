variable "create_policy" {
  description = "Whether to create a policy"
  type        = bool
  default     = false
}

variable "name" {
  description = "The name of the policy"
  type        = string
  default     = ""
}

variable "path" {
  description = "The path of the policy in IAM"
  type        = string
  default     = "/"
}

variable "description" {
  description = "The description of the policy"
  type        = string
  default     = "IAM Policy"
}

variable "policy" {
  description = "The policy in IAM (tpl file)"
  type        = any
  default     = null
}
