resource "aws_security_group" "allow_all_port80_engress" {
  name        = "Public Web SG"
  description = "Public Web SG for allowing all incoming to port 80 from self ip and all ingress"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "Public Web SG for allowing all incoming to port 80 from self ip and all ingress"
    from_port        = 80
    to_port          = 80
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
    Name = "Public-Web-SG"
  }
 }
