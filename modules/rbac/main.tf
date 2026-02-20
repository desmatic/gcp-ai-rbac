resource "google_service_account" "backend" {
  account_id   = "${var.application_name}-backend"
  display_name = "backend"
  project      = data.google_project.project_compute.project_id
}

resource "google_service_account_iam_binding" "backend" {
  service_account_id = google_service_account.backend.name
  role               = "roles/iam.serviceAccountUser"

  members = [
    "group:${var.group_name_admin}",
    "group:${var.group_name_user}",
  ]
}

resource "google_service_account" "middle" {
  account_id   = "${var.application_name}-middle"
  display_name = "middle"
  project      = data.google_project.project_compute.project_id
}

resource "google_service_account_iam_binding" "middle" {
  service_account_id = google_service_account.middle.name
  role               = "roles/iam.serviceAccountUser"

  members = [
    "group:${var.group_name_admin}",
    "group:${var.group_name_user}",
  ]
}

resource "google_service_account" "frontend" {
  account_id   = "${var.application_name}-frontend"
  display_name = "frontend"
  project      = data.google_project.project_compute.project_id
}

resource "google_service_account_iam_binding" "frontend" {
  service_account_id = google_service_account.frontend.name
  role               = "roles/iam.serviceAccountUser"

  members = [
    "group:${var.group_name_admin}",
    "group:${var.group_name_user}",
  ]
}

resource "google_service_account" "cloudbuild" {
  account_id   = "${var.application_name}-cloudbuild"
  display_name = "cloudbuild"
  project      = data.google_project.project_compute.project_id
}

resource "google_service_account_iam_binding" "cloudbuild" {
  service_account_id = google_service_account.cloudbuild.name
  role               = "roles/iam.serviceAccountUser"

  members = [
    "group:${var.group_name_admin}",
    "group:${var.group_name_user}",
  ]
}

resource "google_service_account" "workflows" {
  account_id   = "${var.application_name}-workflows"
  display_name = "workflows"
  project      = data.google_project.project_compute.project_id
}

resource "google_service_account" "scheduler" {
  account_id   = "${var.application_name}-scheduler"
  display_name = "scheduler"
  project      = data.google_project.project_compute.project_id
}
