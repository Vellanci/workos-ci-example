terraform {
  cloud {
    organization = "Vellanci"

    workspaces {
      name = "workos-ci-example"
    }
  }
  required_providers {
    workos = {
      source  = "Vellanci/workos"
      version = "0.1.2"
    }
  }
  required_version = ">= 1.1.0"
}

provider "workos" {
  host = "https://api.workos.com"
}

resource "workos_organization" "example" {
  name    = "Provided Org by Terraform"
  domains = ["provided-org.org", "provided-org.ua"]
}

output "example_organizations" {
  value = workos_organization.example
}
