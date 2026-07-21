terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
    kind = {
      source  = "tehcyx/kind"
      version = "~> 0.0.19"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}