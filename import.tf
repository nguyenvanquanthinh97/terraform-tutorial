provider "aws" {
  region = "ap-southeast-1"
}

import {
  to = aws_security_group.mysg
  id = "sg-03fd75b74705b1777"
}