terraform {
  required_providers {
    tfe = {
      version = "0.26.1"
    }
  }
  backend "remote" {
    organization = "included-dev"

    workspaces {
      name = "dev_terraform"
    }
  }
}

provider "tfe" {
  token = var.api_token
}
