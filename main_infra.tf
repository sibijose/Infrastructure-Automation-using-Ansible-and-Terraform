resource "aws_key_pair" "ssh_key" {
 
  key_name   = "${var.project}-${var.environment}"
  public_key = file("mykey.pub")
  tags = {
    "project"     = var.project
    "environemnt" = var.environment
  }
}
 
 
 
 
resource "aws_security_group" "allow-traffic" {
 
  name        = "${var.project}-${var.environment}-webserver"
  description = "Allow all traffic"
 
 
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
  tags = {
 
    "project"     = var.project
    "environemnt" = var.environment
 
  }
}
 
resource "aws_instance" "test-infra" {
 
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ssh_key.key_name
  vpc_security_group_ids = [aws_security_group.allow-traffic.id]
  tags = {
 
    "project"     = var.project
    "environemnt" = var.environment
  }
}
 
