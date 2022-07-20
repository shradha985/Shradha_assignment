resource "aws_security_group" "allow_vpc_all_engress" {
  name        = "Private_Instance_SG"
  description = "Private Instance SG for allowing all inbound trafic from with in VCP"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "Private Instance SG for allowing all inbound trafic from with in VCP and All egress"
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
    Name = "Private-Instance-SG"
  }
 }
