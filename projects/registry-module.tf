provider "aws" {
    region = "ap-southeast-1"
}

module "ec2_cluster" {
    source = "terraform-aws-modules/ec2-instance/aws"
    version = "~> 5.0.0"

    name = "my-cluster"
    count = 1

    ami = "ami-09b1e8fc6368b8a3a"
    instance_type = "t2.micro"
    subnet_id = "subnet-0523b58c8068a2e2d"

    tags = {
        Terraform = "true"
        Environment = "dev"
    }
}