variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment name (dev or prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Short name used in tags and resource names"
  type        = string
  default     = "voting-app"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "voting-app-eks"
}