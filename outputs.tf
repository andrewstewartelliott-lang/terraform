output "kind_cluster_status" {
  description = "Whether the kind cluster has completed provisioning and is ready"
  value       = kind_cluster.default.completed ? "ready" : "not_ready"
}
