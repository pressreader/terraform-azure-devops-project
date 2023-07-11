resource "azuredevops_project" "main" {
  name               = var.name
  description        = var.description
  visibility         = var.visibility
  version_control    = var.version_control
  work_item_template = var.work_item_template
}