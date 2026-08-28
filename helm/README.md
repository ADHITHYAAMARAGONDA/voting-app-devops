# Helm chart — voting app

This directory will package the Kubernetes manifests as a Helm chart so **dev** and **prod** differ only by values files, not by copied YAML.

## Chart layout (Part 5)

```
helm/
├── Chart.yaml
├── values.yaml           # safe defaults
├── values-dev.yaml       # local / lower-cost AWS
├── values-prod.yaml      # demo production (EKS, RDS, ECR)
└── templates/            # templatized Deployments, Services, Ingress, HPA
```

ArgoCD (Part 7) will sync this chart from Git. GitHub Actions (Part 6) will only bump image tags in values — GitOps remains the deployer.

## Install later (do not run until the chart exists)

```bash
helm upgrade --install voting ./helm -n voting --create-namespace -f helm/values-dev.yaml
```
