# Key Pair
resource "aws_key_pair" "my_key_pair" {

  key_name   = "${var.env}-terra-automatic-key" #dev-terra-automate-key
  public_key = file("${path.root}/terraform.pub")

}

# Default VPC
resource "aws_default_vpc" "default" {

}

# Security Group
resource "aws_security_group" "my_security_group" {
  name        = "${var.env}-terra-security-group"
  description = "This is inbound and outbound rules for your instance"
  vpc_id      = aws_default_vpc.default.id
}

# HTTP Rule
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.my_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

# SSH Rule
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.my_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

# Outbound Rule
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic" {
  security_group_id = aws_security_group.my_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

# EC2 Instance
resource "aws_instance" "my_instance" {

  count = var.ec2_instance_count

  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type

  key_name = aws_key_pair.my_key_pair.key_name

  vpc_security_group_ids = [
    aws_security_group.my_security_group.id
  ]

  root_block_device {
    volume_size = var.ec2_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = var.ec2_instance_name
  }
}
