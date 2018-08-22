provider "aws" {
    region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "outline_aws_sg" {
  name        = "outline"
  description = "outline security group"
  #vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}



resource "aws_instance" "outline_vpn_server" {
    ami = "ami-3ecc8f46"
    instance_type = "t2.micro"
    vpc_security_group_ids  = ["${aws_security_group.outline_aws_sg.id}"]
    key_name = "cameron-iam-keypair"
    tags {
        Name = "Outline_VPN_Server"
    }
}

resource "aws_eip" "lb" {
  instance = "${aws_instance.outline_vpn_server.id}"
  vpc      = true
}