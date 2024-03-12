provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = var.instance_type
}