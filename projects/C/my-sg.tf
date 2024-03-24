module "sgmodule" {
    source = "../../modules/sg"
}

resource "aws_instance" "web" {
    ami = "ami-09b1e8fc6368b8a3a"
    instance_type = "t2.micro"
    vpc_security_group_ids = [module.sgmodule.sg_id]
}