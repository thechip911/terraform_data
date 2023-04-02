provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "example" {
  name_prefix = "example"
  vpc_id      = "vpc-0bb6a5da663414e4d"
}

resource "aws_security_group_rule" "ingress" {
  type        = "ingress"
  from_port   = 0
  to_port     = 65535
  protocol    = "tcp"
  cidr_blocks = ["10.10.0.0/16"]
  security_group_id = aws_security_group.example.id
}

resource "aws_security_group_rule" "egress" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.example.id
}

resource "aws_instance" "example" {
  ami           = "ami-00fe3f650f1d8c5d0"
  instance_type = "t3a.small"
  subnet_id     = "subnet-0a016a54e4c1d8659"
  key_name      = "infra_payme_mach_x"
  vpc_security_group_ids = [aws_security_group.example.id]
}
