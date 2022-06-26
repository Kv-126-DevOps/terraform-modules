output "id" {
  description = "The ID of the broker"
  value       = aws_mq_broker.rabbit.id
}

output "arn" {
  description = "ARN of broker"
  value       = aws_mq_broker.rabbit.arn
}

output "tags" {
  description = "Map of tags assigned to resources"
  value       = aws_mq_broker.rabbit.tags
}

output "broker_name" {
  description = "Name to be used on broker created"
  value       = aws_mq_broker.rabbit.broker_name
}

output "engine_type" {
  description = "Type of broker engine"
  value       = aws_mq_broker.rabbit.engine_type
}

output "engine_version" {
  description = "Version of the broker engine"
  value       = aws_mq_broker.rabbit.engine_version
}

output "host_instance_type" {
  description = "Broker's instance type"
  value       = aws_mq_broker.rabbit.host_instance_type
}

output "security_groups" {
  description = "List of security group IDs assigned to the broker"
  value       = aws_mq_broker.rabbit.security_groups
}

output "subnet_ids" {
  description = "List of subnet IDs in which to launch the broker"
  value       = aws_mq_broker.rabbit.subnet_ids
}

output "endpoint" {
  description = "Broker's wire-level protocol endpoint"
  value       = aws_mq_broker.rabbit.instances.0.endpoints
}
