output "instance_id" {
  value = aws_instance.ec2-jenkins.id
}

output "public_ip" {
  value = aws_instance.ec2-jenkins.public_ip
}

output "private_ip" {
  value = aws_instance.ec2-jenkins.private_ip
}

