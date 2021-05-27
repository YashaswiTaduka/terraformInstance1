provider "aws" {
    access_key = "${var.aws_accesskey}"
    secret_key = "${var.aws_secretkey}"
    region = "${var.aws_region}"
}


resource "aws_instance" "ec2LAMPserver" {
ami = "ami-0d5eff06f840b45e9"
instance_type = "t2.micro"

tags = {
    Name = "myLAMPserver"
}
}
