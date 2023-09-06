# ------------------------------------------------------------------------------------------
# Okta production

resource "tfe_variable" "okta_terraform_org_name" {
  category     = "terraform"
  description  = "Okta org sub-domain"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = false
  sensitive    = false
  key          = "org_name"
  value        = "included-dev"
}

resource "tfe_variable" "okta_terraform_base_url" {
  category     = "terraform"
  description  = "Okta org domain"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = false
  sensitive    = false
  key          = "base_url"
  value        = "oktapreview.com"
}

resource "tfe_variable" "okta_terraform_domain" {
  category     = "terraform"
  description  = "Default email address domain for all users in this Okta org"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = false
  sensitive    = false
  key          = "domain"
  value        = "included-dev.com"
}

resource "tfe_variable" "okta_terraform_brand_name" {
  category     = "terraform"
  description  = "Full company brand name used for this Okta org"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = false
  sensitive    = false
  key          = "brand_name"
  value        = "Included Dev"
}

resource "tfe_variable" "okta_terraform_human_okta_admin_users" {
  category     = "terraform"
  description  = "Map of Okta user IDs for human Okta admin users in this Okta org"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = true
  sensitive    = false
  key          = "human_okta_admin_users"
  value        = <<EOT
{
}
EOT
}

resource "tfe_variable" "okta_terraform_applications" {
  category     = "terraform"
  description  = "Map of Okta application IDs for applications in this Okta org"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications"
  value        = <<EOT
{
}
EOT
}

/*
resource "tfe_variable" "okta_applications_deny_all_unauthorized_users" {
  category     = "terraform"
  description  = "List of applications that should have the deny_all_unauthorized_users signon policy"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications_deny_all_unauthorized_users"
  value        = <<EOT
[
]
EOT
}

resource "tfe_variable" "okta_applications_require_mfa_every_sign_on" {
  category     = "terraform"
  description  = "List of applications that should have the require_mfa_every_sign_on signon policy"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications_require_mfa_every_sign_on"
  value        = <<EOT
[
]
EOT
}

resource "tfe_variable" "okta_applications_deny_unmanaged_windows_clients" {
  category     = "terraform"
  description  = "List of applications that should be denied to unmanaged windows clients"
  workspace_id = tfe_workspace.okta_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications_deny_unmanaged_windows_clients"
  value        = <<EOT
[
]
EOT
}
*/

# ------------------------------------------------------------------------------------------
# Okta sandbox

/*
resource "tfe_variable" "okta_sandbox_terraform_org_name" {
  category     = "terraform"
  description  = "Okta org sub-domain"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = false
  sensitive    = false
  key          = "org_name"
  value        = "includedhealth"
}

/*
resource "tfe_variable" "okta_sandbox_terraform_base_url" {
  category     = "terraform"
  description  = "Okta org domain"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = false
  sensitive    = false
  key          = "base_url"
  value        = "oktapreview.com"
}

resource "tfe_variable" "okta_sandbox_terraform_domain" {
  category     = "terraform"
  description  = "Default email address domain for all users in this Okta org"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = false
  sensitive    = false
  key          = "domain"
  value        = "includedhealth.com"
}

resource "tfe_variable" "okta_sandbox_terraform_brand_name" {
  category     = "terraform"
  description  = "Full company brand name used for this Okta org"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = false
  sensitive    = false
  key          = "brand_name"
  value        = "Included Health Sandbox"
}

resource "tfe_variable" "okta_sandbox_terraform_human_okta_admin_users" {
  category     = "terraform"
  description  = "Map of Okta user IDs for human Okta admin users in this Okta org"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = true
  sensitive    = false
  key          = "human_okta_admin_users"
  value        = <<EOT
{
  adam_edginton            = "00u5j0kq4ojsbIv441d7"
  anthony_miglioranzi      = "00u3a8oulg9eqyDBi1d7"
  jay_chiu                 = "00u1lwzjkuixW43Pz1d7"
  joe_willis               = "00u3kruhctFbzzE8f1d7"
  john_walsh               = "00u1tsr52leYbhQ2C1d7"
  justin_lafontaine        = "00u8uulrv6O9CVKJe1d7"
  kevin_vidotto            = "00u74cqazrEaSKYH41d7"
  kostas_sakellis          = "00u3om0fykuaGN8ka1d7"
  miah_bentley             = "00u1crxc6akYjkKVk1d7"
  rick_cobb                = "00u1trrgg2jmgRwAG1d7"
  venu_gopal               = "00u7i98ck467ZYhqq1d7"
}
EOT
}

resource "tfe_variable" "okta_sandbox_terraform_applications" {
  category     = "terraform"
  description  = "Map of Okta application IDs for applications in this Okta org"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications"
  value        = <<EOT
{
  okta_admin_console   = "0oa1crnwznsLJebiF1d7"
  okta_browser_plugin  = "0oa1crnx3rsoAuqEK1d7"
  okta_dashboard       = "0oa1crnx4cEyeKBEk1d7"
  okta_workflows       = "0oa1dnglbn9R2w5D81d7"
  okta_workflows_oauth = "0oa1dnglcqwDseZkQ1d7"
  workday              = "0oa1dvshpnZBC8RBI1d7"
  signon_test          = "0oa1vgt1vo9m2pmsR1d7"
}
EOT
}

resource "tfe_variable" "okta_sandbox_applications_deny_all_unauthorized_users" {
  category     = "terraform"
  description  = "List of applications that should have the deny_all_unauthorized_users signon policy"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications_deny_all_unauthorized_users"
  value        = <<EOT
[
  "okta_admin_console",
  "okta_browser_plugin",
  "okta_dashboard",
  "okta_workflows",
  "okta_workflows_oauth",
  "signon_test",
]
EOT
}


resource "tfe_variable" "okta_sandbox_applications_deny_unmanaged_windows_clients" {
  category     = "terraform"
  description  = "List of applications that should be denied to unmanaged windows clients"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications_deny_unmanaged_windows_clients"
  value        = <<EOT
[
  "signon_test",
]
EOT
}
*/
/*
resource "tfe_variable" "okta_applications_deny_external_network_zones" {
  category     = "terraform"
  description  = "List of applications that should have the deny_external_network_zones policy"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications_deny_external_network_zones"
  value        = <<EOT
[
  "signon_test",
]
EOT
}

resource "tfe_variable" "okta_sandbox_applications_require_mfa_every_sign_on" {
  category     = "terraform"
  description  = "List of applications that should have the require_mfa_every_sign_on signon policy"
  workspace_id = tfe_workspace.okta_sandbox_terraform.id
  hcl          = true
  sensitive    = false
  key          = "applications_require_mfa_every_sign_on"
  value        = <<EOT
[
  "signon_test",
]
EOT
}
*/
