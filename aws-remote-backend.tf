# Using a single workspace:
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Oragnization name"

    workspaces {
      name = "Workpsace-name"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48.0"
    }
  }
}


