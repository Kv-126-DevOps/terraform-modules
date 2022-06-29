output "id" {
  description = "The ID of the broker"
  value       = aws_mq_broker.rabbit[0].id
}

output "arn" {
  description = "ARN of broker"
  value       = aws_mq_broker.rabbit[0].arn
}

output "tags" {
  description = "Map of tags assigned to resources"
  value       = aws_mq_broker.rabbit[0].tags
}

output "broker_name" {
  description = "Name to be used on broker created"
  value       = aws_mq_broker.rabbit[0].broker_name
}

output "engine_type" {
  description = "Type of broker engine"
  value       = aws_mq_broker.rabbit[0].engine_type
}

output "engine_version" {
  description = "Version of the broker engine"
  value       = aws_mq_broker.rabbit[0].engine_version
}

output "host_instance_type" {
  description = "Broker's instance type"
  value       = aws_mq_broker.rabbit[0].host_instance_type
}

output "security_groups" {
  description = "List of security group IDs assigned to the broker"
  value       = aws_mq_broker.rabbit[0].security_groups
}

output "subnet_ids" {
  description = "List of subnet IDs in which to launch the broker"
  value       = aws_mq_broker.rabbit[0].subnet_ids
}

output "endpoint" {
  description = "Broker's wire-level protocol endpoint"
  value       = aws_mq_broker.rabbit[0].instances.0.endpoints
}
