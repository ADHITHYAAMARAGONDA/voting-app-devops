output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "private_subnet_ids" {
  description = "Private subnet IDs (EKS nodes and RDS)"
  value       = aws_subnet.private[*].id
}

output "eks_cluster_name" {
  description = "EKS cluster name for kubectl"
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_endpoint" {
  description = "Kubernetes API URL"
  value       = aws_eks_cluster.main.endpoint
}

output "ecr_repository_urls" {
  description = "Map of app name to ECR URL for docker push"
  value       = { for name, repo in aws_ecr_repository.app : name => repo.repository_url }
}

output "rds_address" {
  description = "Private RDS hostname (pods use this, not your laptop)"
  value       = aws_db_instance.main.address
}

output "rds_secret_arn" {
  description = "Secrets Manager ARN (username, password, host)"
  value       = aws_secretsmanager_secret.rds.arn
}

output "alb_controller_role_arn" {
  description = "IAM role ARN to annotate on the AWS LB controller ServiceAccount"
  value       = aws_iam_role.alb_controller.arn
}