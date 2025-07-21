codestar_connection_arn = "arn:aws:codestar-connections:ap-south-1:339713011246:connection/89a8a2c4-a4be-47e9-b0d5-aebf868cc303"
aws_auth_roles = [
  {
    rolearn  = "arn:aws:iam::339713011246:role/admin-role"
    username = "admin"
    groups   = ["system:masters"]
  }
]
admin_role_arn = "arn:aws:iam::339713011246:role/admin-role"
codebuild_role_arn = "arn:aws:iam::339713011246:role/admin-role"