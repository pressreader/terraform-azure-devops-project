# Azure DevOps Project Terraform module

Terraform module which creates Project in Azure DevOps

## Usage

```terraform
module "project" {
  source = "git::https://github.com/pressreader/terraform-azure-devops-project.git?ref=v1.0.0"

  name        = "Name of a project"
  description = "Description of the project"

  visibility         = "private" # Defaults to private
  version_control    = "Git"     # Defaults to Git
  work_item_template = "Agile"   # Defaults to Agile
}
```