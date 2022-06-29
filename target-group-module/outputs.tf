output "target_group_arn" {
  description = "The ARN of the target group with which to register targets"
  value       = try(aws_lb_target_group_attachment.frontend[0].target_group_arn, "")
}

output "target_id" {
  description = "The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is ip, specify an IP address. If the target type is lambda, specify the arn of lambda. If the target type is alb, specify the arn of alb."
  value       = try(aws_lb_target_group_attachment.frontend[0].target_id, "")
}

output "port" {
  description = "The port on which targets receive traffic"
  value       = try(aws_lb_target_group_attachment.frontend[0].port, "")
}
