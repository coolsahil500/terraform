output "admin_role_arn" {
  value = aws_iam_role.admin.arn
}

output "codebuild_role_arn" {
  value = aws_iam_role.codebuild.arn
}
    