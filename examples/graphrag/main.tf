module "graphrag" {
  source              = "../../modules/graphrag"
  project_id          = var.project_id
  application_name    = var.application_name
  group_name_admin    = var.group_name_admin
  group_name_user     = var.group_name_user
  group_name_readonly = var.group_name_readonly
  group_name_iap      = var.group_name_iap
}
