### Amazon MQ (RabbitMQ) broker

```hcl
module "aws-tg-module" {
  source  = "../../source"
  target_group_arn = var.target_group_arn
  target_id        = var.target_id
  port             = var.port
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.1 |
| aws | >= 4.7 |

## Resources

| Name | Type |
|------|------|
|aws_lb_target_group_attachment.frontend|resource|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `target_group_arn` |The ARN of the target group with which to register targets | `string` | `arn:aws:elasticloadbalancing:eu-central-1:779414916509:targetgroup/ui/16f43c5cda7c19d6` | no |
| `target_id` | The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is ip, specify an IP address. If the target type is lambda, specify the arn of lambda. If the target type is alb, specify the arn of alb. | `string` | `null` | no |
| `port` | The port on which targets receive traffic | `number` | `80` | no |
| `create` | Whether to create an target group attachment | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| `target_group_arn` | The ARN of the target group with which to register targets |
| `target_id` | The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is ip, specify an IP address. If the target type is lambda, specify the arn of lambda. If the target type is alb, specify the arn of alb. |
| `port` | The port on which targets receive traffic |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
