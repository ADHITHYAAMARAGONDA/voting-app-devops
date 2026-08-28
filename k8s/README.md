# Kubernetes manifests

This directory will hold **production-style** manifests for the voting app. Ignore `../k8s-specifications/` — those are the original sample files and are not used for this DevOps layer.

Workloads: `vote`, `result`, `worker`, Redis. On AWS, PostgreSQL is RDS (connection via ConfigMap/Secret), not an in-cluster database. A local Postgres Deployment may still exist for Minikube-only tests if we keep the same Helm values path.

## What will be added (Part 4)

- `namespace.yaml` — `voting` namespace
- Deployments + Services for vote, result, worker, Redis
- `ingress.yaml` — path-based routing (vote vs result)
- `hpa.yaml` — Horizontal Pod Autoscaler for vote
- `configmap.yaml` — non-secret configuration
- Resource **requests/limits** and **liveness/readiness** probes on every Deployment

Images will come from ECR after CI (Part 6), not from Docker Hub sample tags.

## Apply later (after cluster exists)

```bash
kubectl apply -f k8s/
kubectl get pods -n voting
```

Prefer Helm (Part 5) for environment-specific values (`dev` vs `prod`).
