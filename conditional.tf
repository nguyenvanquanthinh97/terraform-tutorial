provider "aws" {
    region = "ap-southeast-1"
}

variable "istest" {}

resource "aws_instance" "dev" {
    ami = "ami-12345"
    instance_type = "t2.micro"
    count = var.istest ? 1 : 0
}

resource "aws_instance" "prod" {
    ami = "ami-12345"
    instance_type = "t2.large"
    count = !var.istest ? 1 : 0
}