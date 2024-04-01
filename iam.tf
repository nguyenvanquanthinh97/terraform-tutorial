terraform {
  required_version = "~> 1.7.0"

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mykplabs-org-leo97"
    workspaces {
      name = "demo-workspace"
    }
  }
}

resource "aws_iam_user" "lb" {
  name = "remoteuser"
  path = "/system/"
}