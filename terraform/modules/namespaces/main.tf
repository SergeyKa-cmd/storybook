resource "kubernetes_namespace" "prod" {
  metadata {
    annotations = {
      name = "storybook-prod"
    }
    labels = {
      app = "storybook-prod"
    }
    name = "prod"
  }
}

resource "kubernetes_namespace" "dev" {
  metadata {
    annotations = {
      name = "storybook-dev"
    }
    labels = {
      app = "storybook-dev"
    }
    name = "dev"
  }
}
