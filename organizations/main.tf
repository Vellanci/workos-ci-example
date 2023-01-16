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
      version = "~> 0.1.0"
    }
  }
}

provider "workos" {
  host = "https://api.workos.com"
}


resource "workos_organization" "amazon" {
  name    = "Amazon"
  domains = ["amazon.com", "amazon.fr"]
}

resource "workos_organization" "netflix" {
  name    = "Netflix"
  domains = ["netflix.com"]
}
