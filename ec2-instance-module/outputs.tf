output "id" {
  description = "The ID of the instance"
  value       = aws_instance.example.id
}

output "arn" {
  description = "ARN of instance"
  value       = aws_instance.example.arn
}

output "private_dns" {
  description = "Private DNS name assigned to instance. Can only be used inside the Amazon EC2, and only available if you have enabled DNS hostnames for VPC"
  value       = aws_instance.example.private_dns
}

output "public_dns" {
  description = "Public DNS name assigned to instance. Can only be used inside the Amazon EC2, and only available if you have enabled DNS hostnames for VPC"
  value       = aws_instance.example.public_dns
}

output "public_ip" {
  description = "Public IP address assigned to instance"
  value       = aws_instance.example.public_ip
}

output "private_ip" {
  description = "Private IP address assigned to instance"
  value       = aws_instance.example.private_ip
}

output "tags_all" {
  description = "Map of tags assigned to resources"
  value       = aws_instance.example.tags_all
}
