output "ec2_public_ip" {
  value = aws_instance.my_instance[*].public_ip

}

output "ec2_public_dns" {
  value = aws_instance.my_instance[*].public_dns
}

# [*] this added above becaause instance count is above than 1 or more than one
