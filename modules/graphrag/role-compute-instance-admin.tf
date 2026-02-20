resource "google_project_iam_custom_role" "compute_instance_admin" {
  role_id     = "compute.admin"
  title       = "compute.admin"
  description = "Permissions to manually admin a compute instance"
  project     = data.google_project.project_compute.project_id
  permissions = [
    "compute.instances.get",
    "compute.instances.setMetadata", # set windows password
    "compute.instances.stop",
    "compute.instances.start",
    "resourcemanager.projects.get",
    "storage.bucketOperations.get",
    "storage.bucketOperations.list",
    "storage.buckets.get",
    "storage.buckets.getIamPolicy",
    "storage.buckets.getIpFilter",
    "storage.buckets.getObjectInsights",
    "storage.buckets.list",
    "storage.buckets.listEffectiveTags",
    "storage.buckets.listTagBindings",
  ]
}

resource "google_project_iam_binding" "role-compute-instance-admin" {
  project = data.google_project.project_compute.project_id
  role    = google_project_iam_custom_role.compute_instance_admin.name
  members = [
    "group:${var.group_name_admin}",
    "serviceAccount:${google_service_account.backend.email}",
    "serviceAccount:${google_service_account.frontend.email}",
    "serviceAccount:${google_service_account.middle.email}",
  ]
}
