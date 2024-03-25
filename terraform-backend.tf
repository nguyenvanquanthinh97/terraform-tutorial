terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backend-leo97"
    key    = "network/terraform.tfstate"
    region = "ap-southeast-1"
  }
}