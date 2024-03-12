provider "aws" {
    region = "ap-southeast-1"
}

locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "backend"
  }
}

resource "aws_instance" "app-dev" {
    ami = "ami-123456"
    instance_type = "t2.micro"
    tags = local.common_tags
}
