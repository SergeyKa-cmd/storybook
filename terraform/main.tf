provider "google" {
  project = "skyfall-267015"
  region  = "europe-west1"
}

resource "google_container_cluster" "primary" {
  project            = "skyfall-267015"
  name               = "sulaco-ss"
  location           = "europe-west1-b"
  logging_service    = "none"
  monitoring_service = "none"
  initial_node_count = 2
  node_config {
    machine_type = "n1-standard-1"
    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/compute",
    ]
  }
  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${google_container_cluster.primary.name}"
  }
}

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
  depends_on = ["google_container_cluster.primary"]
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
  depends_on = ["google_container_cluster.primary"]
}

resource "kubernetes_pod" "storybook-app" {
  metadata {
    name      = "storybook-prod"
    namespace = "prod"
    labels = {
      app = "storybook-prod"
    }
  }
  depends_on = ["google_container_cluster.primary"]
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
  depends_on = ["google_container_cluster.primary"]
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
  depends_on = ["google_container_cluster.primary"]
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
  depends_on = ["google_container_cluster.primary"]
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
  depends_on = ["google_container_cluster.primary"]
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
  depends_on = ["google_container_cluster.primary"]
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

# resource "kubernetes_persistent_volume_claim" "gitlabpvc" {
#   metadata {
#     name = "gitlabpvc"
#   }
#   spec {
#     access_modes = ["ReadWriteOnce"]
#     resources {
#       requests = {
#         storage = "10Gi"
#       }
#     }
#     volume_name = "storybookstorage"
#   }
# }

# resource "kubernetes_persistent_volume" "storybook-data" {
#   metadata {
#     name = "storybookstorage"
#   }
#   spec {
#     capacity = {
#       storage = "10Gi"
#     }
#     access_modes = ["ReadWriteOnce"]
#     persistent_volume_source {
#       gce_persistent_disk {
#         pd_name = "common"
#       }
#     }
#   }
# }
