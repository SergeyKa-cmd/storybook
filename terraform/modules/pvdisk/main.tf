resource "google_compute_disk" "common" {
  name = "common"
  type = "pd-ssd"
  size = "20"
  zone = "${var.location}"  
} 

resource "kubernetes_storage_class" "std-storybook-sc" {
  metadata {
    name = "std-storybook-sc"
  }
  storage_provisioner = "kubernetes.io/gce-pd"
  reclaim_policy      = "Retain"
  parameters = {
    type = "pd-ssd"
  }
  mount_options = ["file_mode=0700", "dir_mode=0777", "mfsymlinks", "uid=1000", "gid=1000", "nobrl", "cache=none"]
}

resource "kubernetes_persistent_volume_claim" "gitlab-pvc" {
  metadata {
    name = "gitlab-pvc"
  }
  spec {
    access_modes = ["ReadWriteOnce"]
    resources {
      requests = {
        storage = "5Gi"
      }
    }
    volume_name = "gitlab-share"
    storage_class_name = ""
  }
}

resource "kubernetes_persistent_volume" "gitlab-share" {
  metadata {
    name = "gitlab-share"
  }
  spec {
    capacity = {
      storage = "10Gi"
    }
    access_modes = ["ReadWriteMany"]
    storage_class_name = "std-storybook-sc"
    persistent_volume_source {
      gce_persistent_disk {
        fs_type = "xfs"
        pd_name = "common"
      }
    }
  }
}
