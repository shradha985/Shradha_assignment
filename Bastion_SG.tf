resource "aws_security_group" "allow_all_engress" {
  name        = "Bastion_host_SG"
  description = "Allow self ip to ssh Bastion and allow all egress"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "Bastion Host SG for inbound trafic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Bastion-host-SG"
  }
}

