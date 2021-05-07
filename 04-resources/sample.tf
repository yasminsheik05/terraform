resource "aws_instance" "sample" {
  ami                       = "ami-079a3f3cf00741286"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [aws_security_group.allow_ssh.id]
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  ingress {
    description  = "ssh"
    from_port    = 22
    to_port      = 443
    protocol     = "tcp"
    cidr_blocks  = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_ssh"
  }
}