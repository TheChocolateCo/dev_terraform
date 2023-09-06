# ------------------------------------------------------------------------------------------
# Okta production

resource "tfe_workspace" "okta_terraform" {
  name               = "dev_terraform"
  organization       = var.org_name
  description        = "Workspace to build the Included Health Okta org via infrastructure-as-code"
  allow_destroy_plan = false
  terraform_version  = "1.0.8"
}
