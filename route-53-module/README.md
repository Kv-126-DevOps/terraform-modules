### Amazon MQ (RabbitMQ) broker

```hcl
module "aws-route-53-record-module" {
  source  = "../../source"
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  alias {
    name                   = var.alb_dns_name
    zone_id                = var.hosted_zone
    evaluate_target_health = var.evaluate_target_health
  }
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
|aws_route53_record.ui|resource|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `name` | The name of the record | `string` | `ui` | no |
| `type` | The record type. Valid values are A, AAAA, CAA, CNAME, DS, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT | `string` | `A` | no |
| `zone_id` | The ID of the hosted zone to contain this record | `string` | `Z0793915QPXVRLWO8FP3` | no |
| `alias` | An alias block. | `map(any)` | `{}` | no |
| `alb_dns_name` | ALB DNS name. | `string` | `dualstack.MAIN-LB-1389830226.eu-central-1.elb.amazonaws.com` | no |
| `hosted_zone` | ALB Hosted zone | `string` | `Z215JYRZR1TBD5` | no |
| `evaluate_target_health` | Health cheack | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| `name` | The name of the record |
| `zone_id` | The ID of the hosted zone to contain this record |
| `type` | The record type |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
