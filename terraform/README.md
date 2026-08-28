# Terraform — AWS infrastructure

This directory will hold reusable Terraform that provisions the AWS footprint for the voting app.

**Target region:** `ap-south-1` (Mumbai)  
**Runtime target:** Amazon EKS (not Minikube). Minikube is optional later only to dry-run Kubernetes YAML/Helm locally; the resume-facing deployment is AWS.

## What this layer will create (Part 3)

| Resource | Why it exists |
| --- | --- |
| VPC, public/private subnets, IGW, NAT | Isolate EKS/RDS from the internet except through controlled paths |
| EKS cluster + node group + IAM | Run vote, result, worker, Redis as Kubernetes workloads |
| ECR repositories | Store images built by GitHub Actions |
| RDS PostgreSQL (private subnet) | Production-style data store instead of in-cluster Postgres for the AWS demo |
| ALB | Public HTTP entry for vote/result |
| S3 + DynamoDB | Remote Terraform state and lock |

## Files (to be added in Part 3)

- `backend.tf` — S3 state + DynamoDB lock
- `providers.tf` — AWS provider
- `variables.tf` / `terraform.tfvars.example` — no hardcoded account-specific values in `.tf`
- `vpc.tf`, `eks.tf`, `ecr.tf`, `rds.tf`, `alb.tf`
- `outputs.tf` — cluster endpoint, VPC ID, ECR URLs

Live `*.tfvars` and `*.tfstate` are gitignored. Do not commit AWS keys.

## Commands (do not run until Part 3 + Part 9)

```bash
terraform init
terraform plan
terraform apply
```

`terraform destroy` is **never** run unless you explicitly request it.
