# Monitoring

This directory contains the observability documentation and exported Grafana
dashboards used with the EKS deployment.

## Stack

- Prometheus for metrics collection and PromQL queries
- Grafana for dashboards and operational review
- kube-state-metrics for Kubernetes object state
- node-exporter for node-level metrics

The current dashboard focuses on cluster and workload health. It is intentionally
based on metrics available from the installed Kubernetes monitoring stack rather
than claiming application instrumentation that the sample services do not expose.

## Useful checks

```bash
kubectl get pods -n monitoring
kubectl get svc -n monitoring
kubectl get servicemonitors -A
```

Port-forward Grafana locally when required:

```bash
kubectl port-forward svc/prometheus-grafana -n monitoring 3000:80
```

Then open [http://localhost:3000](http://localhost:3000). Service names can vary
with the Helm release, so confirm the Grafana service name with `kubectl get svc`.

## Dashboard artifacts

Exported dashboards are stored in `monitoring/grafana/`. Keeping the JSON in the
repository makes the dashboard reviewable, portable, and suitable for later
Grafana provisioning or GitOps automation.

## Evidence to capture

- Grafana dashboard showing healthy nodes and workloads
- Prometheus targets page showing active targets
- `kubectl get pods -n monitoring` showing the monitoring components running

Alert rules, TLS, and application-specific metrics are documented as future
enhancements because they require additional service instrumentation and
operational policy decisions.
