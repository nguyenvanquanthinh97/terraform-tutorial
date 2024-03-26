resource "aws_instance" "webapp" {
  ami           = data.aws_ami.centos.id
  instance_type = "t2.micro"
}