provider "openstack" {
  auth_url = var.auth_url
  project_domain_id = var.project_domain_id
  user_domain_name = var.user_domain_name
  user_name = var.user_name
}
