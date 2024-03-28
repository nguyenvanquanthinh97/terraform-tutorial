terraform {
  backend "s3" {
    bucket         = "kplabs-terraform-backend-leo97"
    key            = "network/eip.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-state-locking"
  }
}