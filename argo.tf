data "http" "argo_base_manifest" {
  url = "https://raw.githubusercontent.com/andrewstewartelliott-lang/argocd/main/argo/base/base.yaml"
}

data "http" "k8s_viewer_cluster_role_manifest" {
  url = "https://raw.githubusercontent.com/andrewstewartelliott-lang/argocd/main/argo/applications/k8s-viewer/clusterRole.yaml"
}

resource "kubernetes_manifest" "argo_base" {
  manifest = yamldecode(data.http.argo_base_manifest.response_body)

  depends_on = [kind_cluster.default, helm_release.argocd]
}

resource "kubernetes_manifest" "k8s_viewer_cluster_role" {
  description = "The ClusterRole for the k8s-viewer Argo CD application"
  manifest = yamldecode(data.http.k8s_viewer_cluster_role_manifest.response_body)

  depends_on = [kind_cluster.default, helm_release.argocd]
}