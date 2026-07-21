data "http" "argo_base_manifest" {
  url = "https://raw.githubusercontent.com/andrewstewartelliott-lang/argocd/main/argo/base/base.yaml"
}

resource "kubernetes_manifest" "argo_base" {
  manifest = yamldecode(data.http.argo_base_manifest.response_body)

  depends_on = [kind_cluster.default, helm_release.argocd]
}