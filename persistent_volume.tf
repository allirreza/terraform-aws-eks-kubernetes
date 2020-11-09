resource "kubernetes_persistent_volume_claim" "example" {
  metadata {
    name = "bucketlist-storage-claim"
  }
  spec {
    storage_class_name = "gp2"
    access_modes = ["ReadWriteOnce"]
    resources {
      requests = {
        storage = "2Gi"
      }
    }
    volume_name = kubernetes_persistent_volume.example.metadata.0.name
  }
}

resource "kubernetes_persistent_volume" "example" {
  metadata {
    name = "bucketlist-storage"
    labels = {
      type = "local"
    }
  }
  spec {
    storage_class_name = "gp2"
    capacity = {
      storage = "2Gi"
    }
    access_modes = ["ReadWriteOnce"]
    persistent_volume_source {
      host_path {
        path = "/app-storage/"
      }
    }
  }
}
