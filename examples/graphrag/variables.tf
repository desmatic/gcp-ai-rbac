variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "application_name" {
  description = "The name for the application stack"
  type        = string
}

variable "group_name_admin" {
  description = "Group with full admin access"
  type        = string
}

variable "group_name_user" {
  description = "Group with developer access"
  type        = string
}

variable "group_name_readonly" {
  description = "Group with auditor access"
  type        = string
}

variable "group_name_iap" {
  description = "Group with Identity Aware Proxy (IAP) application access"
  type        = string
}
