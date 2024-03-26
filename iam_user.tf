resource "aws_iam_user" "lb" {
  name = "terraform-backend"
  path = "/system/"
}