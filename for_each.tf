provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-09b1e8fc6368b8a3a"
  for_each = {
    key1 = "t2.micro"
    key2 = "t2.medium"
  }
  instance_type = each.value
  key_name      = each.key
  tags = {
    Name = each.value
  }
}

resource "aws_iam_user" "lb" {
  for_each = {
    "user00" = "user-00"
    "user01" = "user-01"
    "user02" = "user-02"
    "user03" = "user-03"
  }
  name = "loadbalancer.${each.value}"
  path = "/system/"
}