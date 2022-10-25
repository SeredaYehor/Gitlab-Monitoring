output "runner" {
  value = aws_instance.gitlab_runner.public_ip
}

output "production" {
  value = aws_instance.production.public_ip
}

output "monitoring" {
  value = aws_instance.monitoring.public_ip
}
