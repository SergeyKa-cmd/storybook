resource "kubernetes_pod" "storybook-app" {
  metadata {
    name      = "storybook-prod"
    namespace = "prod"
    labels = {
      app = "storybook-prod"
    }
  }
  spec {
    container {
      image = "sergeykacmd/storybook-app:latest"
      name  = "storybook-prod"
      env {
        name  = "environment"
        value = "prod"
      }
    }
  }
}

resource "kubernetes_pod" "storybook-app-dev" {
  metadata {
    name      = "storybook-dev"
    namespace = "dev"
    labels = {
      app = "storybook-dev"
    }
  }
  spec {
    container {
      image = "sergeykacmd/storybook-app:latest"
      name  = "storybook-dev"
      env {
        name  = "environment"
        value = "dev"
      }
    }
  }
}

resource "kubernetes_pod" "gitlab-ce" {
  metadata {
    name      = "gitlab-ce"
    namespace = "dev"
    labels = {
      app = "gitlab-ce"
    }
  }
   spec {
    container {
      image = "sergeykacmd/gitlab-ce-storybook:latest"
      name  = "gitlab-ce"
      env {
        name  = "environment"
        value = "dev"
      }
    }
  }
}

resource "kubernetes_service" "svc-prod" {
  metadata {
    name      = "storybook-prod"
    namespace = "prod"
  }
  spec {
    port {
      name        = "http"
      port        = 80
      target_port = 80
    }
    selector = {
      app = "${kubernetes_pod.storybook-app.metadata.0.labels.app}"
    }
    type = "LoadBalancer"
  }
}

resource "kubernetes_service" "svc-dev" {
  metadata {
    name      = "storybook-dev"
    namespace = "dev"
  }
  spec {
    port {
      name        = "http"
      port        = 80
      target_port = 80
    }
    selector = {
      app = "${kubernetes_pod.storybook-app-dev.metadata.0.labels.app}"
    }
    type = "LoadBalancer"
  }
}

resource "kubernetes_service" "svc-gitlab" {
  metadata {
    name      = "gitlab-ce"
    namespace = "prod"
  }
  spec {
    port {
      name        = "http"
      port        = 80
      target_port = 80
    }
    selector = {
      app = "${kubernetes_pod.gitlab-ce.metadata.0.labels.app}"
    }
    type = "LoadBalancer"
  }
}

