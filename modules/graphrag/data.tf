data "google_project" "project_compute" {
  project_id = var.project_id
}

data "google_storage_project_service_account" "project_compute" {
  project = var.project_id
}
