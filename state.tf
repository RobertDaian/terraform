terraform {
  cloud {
    organization = "RobertDaian"

    workspaces {
      name = "Terraform-state"
    }
  }
}