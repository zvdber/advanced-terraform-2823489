terraform {
  backend "remote" {
    organization = "zvber_terraform_training"

    workspaces {
      name = "cli-workspace"
    }
  }
}
