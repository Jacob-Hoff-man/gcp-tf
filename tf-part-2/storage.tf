resource "google_storage_bucket" "remote-backend" {
  project                     = var.project_id
  name                        = "${var.project_id}-tfstate-bucket"
  uniform_bucket_level_access = true
  location                    = var.region

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_storage_bucket_iam_member" "remote" {
  bucket = google_storage_bucket.remote-backend.name
  role   = "roles/storage.admin"
  member = "serviceAccount:owner-service-account@valid-micron-448222-n5.iam.gserviceaccount.com"
}
