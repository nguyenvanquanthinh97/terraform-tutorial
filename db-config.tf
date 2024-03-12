resource "aws_instance" "db-dev" {
    ami = "ami-123456"
    instance_type = "t2.small"
    tags = local.common_tags
}