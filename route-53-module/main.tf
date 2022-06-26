resource "aws_route53_record" "ui" {
  count   = var.create ? 1 : 0
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  alias {
    name                   = var.alb_dns_name
    zone_id                = var.hosted_zone
    evaluate_target_health = var.evaluate_target_health
  }
}
