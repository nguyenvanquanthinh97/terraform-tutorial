provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-09b1e8fc6368b8a3a"
  instance_type = "t2.micro"

  lifecycle {
    prevent_destroy = true
  }
}