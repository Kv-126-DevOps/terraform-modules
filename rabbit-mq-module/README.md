### Amazon MQ (RabbitMQ) broker

```hcl
module "aws-mq-broker-module" {
  source             = "../../source"
  create             = var.create
  broker_name        = var.broker_name
  engine_type        = var.engine_type
  engine_version     = var.engine_version
  host_instance_type = var.host_instance_type
  security_groups    = var.security_groups
  subnet_ids         = var.subnet_ids
  username = var.username
  password = var.password
}
```
## Conditional creation

The following combinations are supported to conditionally create resources:

- Disable resource creation:

```hcl
  create = false
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.1 |
| aws | >= 4.7 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 4.7 |


## Resources

| Name | Type |
|------|------|
|aws_mq_broker.rabbit|resource|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `create` | Whether to create an broker | `bool` | `true` | no |
| `broker_name` | Name to be used on broker created | `string` | `rabbit-mq-broker` | no |
| `engine_type` | Type of broker engine, it can be ActiveMQ too | `string` | `RabbitMQ` | no |
| `engine_version` |Version of the broker engine | `string` | `3.9.16` | no |
| `host_instance_type` | Broker's instance type | `string` | `mq.t3.micro` | no |
| `security_groups` | List of security group IDs assigned to the broker | `list(string)` | `null` | no |
| `subnet_ids` | List of subnet IDs in which to launch the broker | `list(string)` | `null` | no |
| `username` | Username of the user | `string` | `mquser` | no |
| `password` | Password of the user. It must be 12 to 250 characters long, at least 4 unique characters, and must not contain commas | `string` | `null` | no |
| `tags` | Mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| `arn` | ARN of instance |
| `id` | The ID of the broker |
| `tags` | Map of tags assigned to resources |
| `vpc_id` | ID of the VPC where to create instance |
| `broker_name` | Name to be used on broker created |
| `engine_type` | Type of broker engine |
| `engine_version` | Version of the broker engine |
| `host_instance_type` | Broker's instance type |
| `security_groups` | List of security group IDs assigned to the broker |
| `subnet_ids` |List of subnet IDs in which to launch the broker |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
