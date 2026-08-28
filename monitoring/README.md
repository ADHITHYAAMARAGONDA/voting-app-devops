# Monitoring — Prometheus and Grafana

This directory will hold Helm values, dashboards, and alert rules for cluster and application observability on EKS.

## Planned contents (Part 8)

```
monitoring/
├── prometheus/values.yaml
├── grafana/values.yaml
├── grafana/dashboards/    # JSON dashboards for vote/result/worker
└── alerts/                # PrometheusRule-style alerts
```

Metrics we will care about for a recruiter demo: pod health, request rate/errors on vote and result, Redis/RDS connectivity, and worker processing lag if we expose it.

Do not install the stack until the EKS cluster and workloads are up (Part 9). Screenshot Grafana and Prometheus targets at that point.
