resource "aws_security_group" "allow_ssh2" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "mynano2" {
    ami = data.aws_ami.app_ami.id
    instance_type = "t2.micro"
    key_name = "terraform"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    provisioner "remote-exec" {
        inline = [
            "sudo yum -y install nano"
        ]
        # This will skip the error if happening
        on_failure = continue
    }

    connection {
        type = "ssh"
        user = "ec2-user"
        private_key = file("./terraform.pem")
        host = self.public_ip
    }
}