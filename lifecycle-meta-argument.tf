provider "aws" {
  region = "ap-southeast-1"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-09b1e8fc6368b8a3a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }

  lifecycle {
    # This will ignore all changes happening on manual and previous
    # ignore_changes = all
    ignore_changes = [ tags ]
  }
}