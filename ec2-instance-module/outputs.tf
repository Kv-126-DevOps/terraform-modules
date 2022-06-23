output "id" {
  description = "The ID of the instance"
  value       = try(aws_ec2_instance.example[0].id, "")
}

output "arn" {
  description = "ARN of instance"
  value       = try(aws_ec2_instance.example[0].arn, "")
}

output "private_dns" {
  description = "Private DNS name assigned to instance. Can only be used inside the Amazon EC2, and only available if you have enabled DNS hostnames for VPC"
  value       = try(aws_ec2_instance.example[0].private_dns, "")
}

output "public_dns" {
  description = "Public DNS name assigned to instance. Can only be used inside the Amazon EC2, and only available if you have enabled DNS hostnames for VPC"
  value       = try(aws_ec2_instance.example[0].public_dns, "")
}

output "public_ip" {
  description = "Public IP address assigned to instance"
  value       = try(aws_ec2_instance.example[0].public_ip, "")
}

output "private_ip" {
  description = "Private IP address assigned to instance"
  value       = try(aws_ec2_instance.example[0].private_ip, "")
}

output "tags_all" {
  description = "Map of tags assigned to resources"
  value       = try(aws_ec2_instance.example[0].tags_all, {})
}

output "vpc_id" {
  description = "ID of the VPC where to create instance"
  value       = try(aws_ec2_instance.example[0].vpc_id, "")
}
