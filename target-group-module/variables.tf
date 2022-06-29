variable "target_group_arn" {
  description = "The ARN of the target group with which to register targets"
  type        = string
  default     = "arn:aws:elasticloadbalancing:eu-central-1:779414916509:targetgroup/ui/16f43c5cda7c19d6"
}

variable "target_id" {
  description = "The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is ip, specify an IP address. If the target type is lambda, specify the arn of lambda. If the target type is alb, specify the arn of alb."
  type        = string
  default     = null
}

variable "port" {
  description = "The port on which targets receive traffic"
  type        = number
  default     = 80
}

variable "create" {
  description = "Whether to create an target group attachment"
  type        = bool
  default     = true
}
