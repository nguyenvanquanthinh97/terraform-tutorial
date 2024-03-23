resource "aws_instance" "myweb" {
    ami = "ami-09b1e8fc6368b8a3a"
    instance_type = var.instance_type
}