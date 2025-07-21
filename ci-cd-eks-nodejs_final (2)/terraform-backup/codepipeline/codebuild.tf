resource "aws_codebuild_project" "node_build" {
  name          = "nodejs-eks-build"
  description   = "Build project for Node.js EKS app"
  service_role  = var.admin_role_arn

  artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:7.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = true
  }

  source {
    type      = "CODEPIPELINE"
    buildspec = "buildspec.yaml"
  }

  cache {
    type = "NO_CACHE"
  }
}