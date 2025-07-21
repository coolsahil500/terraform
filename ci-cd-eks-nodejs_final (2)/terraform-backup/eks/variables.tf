variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes version"
  default     = "1.27"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the EKS cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets for the EKS cluster"
}

variable "enable_irsa" {
  type        = bool
  description = "Enable IAM roles for service accounts"
  default     = true
}

variable "aws_auth_roles" {
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  description = "List of roles to add to aws-auth configmap"
  default     = []
}
