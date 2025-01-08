output "ec2_public_ip" {
  value = { for k, v in aws_instance.my_ec2 : k => v.public_ip }
}
