# variables.tf

variable "codestar_connection_arn" {
  description = "The ARN of the GitHub CodeStar connection"
  type        = string
}

variable "admin_role_arn" {
  description = "The ARN of the IAM admin role"
  type        = string
}

variable "codebuild_role_arn" {
  description = "The ARN of the IAM role for CodeBuild"
  type        = string
}
