# Project Evidence

This folder stores the screenshots used to demonstrate the project during a
portfolio review. Upload the images after validating the current deployment;
avoid committing screenshots that contain credentials, tokens, or personal AWS
account details.

## Suggested screenshot files

- docker-ps.png
- vote-local.png
- result-local.png
- terraform-apply.png
- eks-cluster.png
- kubectl-pods.png
- github-actions.png
- argocd.png
- grafana-dashboard.png
- prometheus-targets.png
- vote-aws.png
- result-aws.png

## Recommended capture order

1. `docker-ps.png` and the local vote/result pages
2. `terraform-apply.png` and `eks-cluster.png`
3. `kubectl-pods.png` and the ingress hostname
4. `github-actions.png`
5. `argocd.png`
6. `prometheus-targets.png` and `grafana-dashboard.png`
7. `vote-aws.png` and `result-aws.png`

The strongest final evidence is an end-to-end pair: a healthy ArgoCD
application, healthy monitoring targets, and both live ALB routes working at
`/vote` and `/result`.
