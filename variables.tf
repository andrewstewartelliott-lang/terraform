variable "cluster_name" {
  description = "The name of the kind cluster"
  type        = string
  default     = "test-cluster"
}

variable "api_version" {
  description = "The API version for the kind cluster"
  type        = string
  default     = "kind.x-k8s.io/v1alpha4"
}

variable "node_image" {
  description = "The node image for the kind cluster"
  type        = string
  default     = "kindest/node:v1.36.1"
}

variable "argo_manifest_url" {
  description = "The URL for the ArgoCD base manifest"
  type        = string
  default     = "https://raw.githubusercontent.com/andrewstewartelliott-lang/argocd/refs/heads/main/argo/base/base.yaml"
}

variable "k8s_viewer_cluster_role_url" {
  description = "The URL for the Kubernetes viewer cluster role manifest"
  type        = string
  default     = "https://raw.githubusercontent.com/andrewstewartelliott-lang/golang-k8s-view/refs/heads/main/yaml/clusterRole.yaml"
}