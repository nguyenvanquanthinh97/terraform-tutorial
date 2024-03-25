terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backend-leo97"
    key    = "network/tmp.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "terraform-state-locking"
  }
}

resource "time_sleep" "wait_150_seconds" {
    create_duration = "150s"
}
